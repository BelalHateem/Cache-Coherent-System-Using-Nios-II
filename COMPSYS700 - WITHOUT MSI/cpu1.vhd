library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cpu1 is
    port (
        clk            : in std_logic;
        reset          : in std_logic;
        addr           : in std_logic_vector(31 downto 0);   -- SDRAM address
        data_in        : in std_logic_vector(31 downto 0);   -- Data to write to cache
        data_out       : out std_logic_vector(31 downto 0);  -- Data read from cache
        read_en        : in std_logic;                       -- Read enable
        write_en       : in std_logic;                       -- Write enable
        sdram_data     : in std_logic_vector(31 downto 0);   -- Data from SDRAM
        sdram_addr     : out std_logic_vector(31 downto 0);  -- Address for SDRAM access
        sdram_read     : out std_logic;
        sdram_write    : out std_logic;
        msi_state      : inout std_logic_vector(1 downto 0); -- MSI: 00=Invalid, 01=Shared, 10=Modified
        invalidate     : in std_logic;                       -- Invalidate signal from MSI protocol
        cpu0_data      : in std_logic_vector(31 downto 0);   -- Data from cpu0's cache
        request_cpu0   : out std_logic;                      -- Signal to request data from cpu0
        grant_cpu1_data: out std_logic_vector(31 downto 0);  -- Data output for cpu1 to grant cpu0's request
        request_cpu1   : in std_logic                        -- Signal from cpu0 requesting data from cpu1
    );
end cpu1;

architecture Behavioral of cpu1 is
    -- Cache line structure: Valid bit, Tag, Data
    type cache_line is record
        valid : std_logic;
        tag   : std_logic_vector(19 downto 0);    -- Tag bits for identifying memory address
        data  : std_logic_vector(31 downto 0);    -- Data block
    end record;

    type cache_array is array (0 to 3) of cache_line; -- Example 4-line direct-mapped cache
    signal cache : cache_array;
    signal index : std_logic_vector(1 downto 0); -- Index to access the cache lines
    signal tag_in : std_logic_vector(19 downto 0); -- Tag extracted from the address
    signal block_offset : std_logic_vector(1 downto 0); -- Offset for block selection
    signal hit : std_logic;
begin

    -- Cache access logic
    process(clk, reset)
    begin
        if reset = '1' then
            -- Reset the cache
            for i in 0 to 3 loop
                cache(i).valid <= '0';
                cache(i).tag <= (others => '0');
                cache(i).data <= (others => '0');
            end loop;
            data_out <= (others => '0');
            hit <= '0';
            msi_state <= "00"; -- Invalid
        elsif rising_edge(clk) then
            -- Extract index and tag from the address
            index <= addr(3 downto 2);       -- Example: bits 2-3 for cache index
            tag_in <= addr(31 downto 12);    -- Example: bits 12-31 for tag
            block_offset <= addr(1 downto 0); -- Example: bits 0-1 for block offset

            -- Handle cache invalidation from MSI protocol
            if invalidate = '1' then
                -- Invalidate the cache line if the signal is high
                cache(to_integer(unsigned(index))).valid <= '0';
                msi_state <= "00"; -- Invalid

                -- Fetch data from cpu0 (cache-to-cache transfer)
                request_cpu0 <= '1'; -- Signal to request data from cpu0
                cache(to_integer(unsigned(index))).data <= cpu0_data;
                cache(to_integer(unsigned(index))).tag <= tag_in;
                cache(to_integer(unsigned(index))).valid <= '1';
                data_out <= cpu0_data;
                msi_state <= "01"; -- Shared
            else
                -- Regular cache operations
                request_cpu0 <= '0'; -- No need to request from cpu0

                if read_en = '1' then
                    -- Check if there is a cache hit
                    if cache(to_integer(unsigned(index))).valid = '1' and 
                       cache(to_integer(unsigned(index))).tag = tag_in then
                        -- Cache hit: return the data from cache
                        data_out <= cache(to_integer(unsigned(index))).data;
                        hit <= '1';
                        msi_state <= "01"; -- Shared
                    else
                        -- Cache miss: fetch data from SDRAM
                        sdram_addr <= addr;
                        sdram_read <= '1';
                        cache(to_integer(unsigned(index))).data <= sdram_data;
                        cache(to_integer(unsigned(index))).tag <= tag_in;
                        cache(to_integer(unsigned(index))).valid <= '1';
                        data_out <= sdram_data;
                        hit <= '0';
                        msi_state <= "01"; -- Shared
                    end if;
                elsif write_en = '1' then
                    -- Check if the cache line is valid and matches the tag
                    if cache(to_integer(unsigned(index))).valid = '1' and 
                       cache(to_integer(unsigned(index))).tag = tag_in then
                        -- Cache hit: update the cache line
                        cache(to_integer(unsigned(index))).data <= data_in;
                        msi_state <= "10"; -- Modified
                    else
                        -- Cache miss: write to SDRAM and update cache
                        sdram_addr <= addr;
                        sdram_write <= '1';
                        cache(to_integer(unsigned(index))).data <= data_in;
                        cache(to_integer(unsigned(index))).tag <= tag_in;
                        cache(to_integer(unsigned(index))).valid <= '1';
                        msi_state <= "10"; -- Modified
                    end if;
                end if;
            end if;

            -- Grant data to cpu0 if requested
            if request_cpu1 = '1' then
                grant_cpu1_data <= cache(to_integer(unsigned(index))).data; -- Provide data to cpu0
            end if;

        end if;
    end process;
end Behavioral;
