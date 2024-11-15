library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity msi_cache_coherence is
    port (
        clk        : in  std_logic;
        clk_en     : in  std_logic;
        reset      : in  std_logic;
        start      : in  std_logic;
        dataa      : in  std_logic_vector(31 downto 0);
        datab      : in  std_logic_vector(31 downto 0);
        result     : out std_logic_vector(31 downto 0);
        done       : out std_logic
    );
end entity msi_cache_coherence;

architecture rtl of msi_cache_coherence is
    type state_type is (IDLE, CHECK, UPDATE, COMPLETE);
    signal state, next_state : state_type;
    signal internal_result   : std_logic_vector(31 downto 0);
    signal internal_done     : std_logic;
begin
    process(clk, reset)
    begin
        if reset = '1' then
            state <= IDLE;
        elsif rising_edge(clk) then
            if clk_en = '1' then
                state <= next_state;
            end if;
        end if;
    end process;

    process(state, start, dataa, datab)
    begin
        next_state <= state;
        internal_result <= (others => '0');
        internal_done <= '0';
        case state is
            when IDLE =>
                if start = '1' then
                    next_state <= CHECK;
                end if;

            when CHECK =>
                -- Check cache coherence based on MSI protocol
                if dataa /= datab then
                    internal_result <= x"00000001"; -- Cache miss
                    next_state <= UPDATE;
                else
                    internal_result <= x"00000000"; -- Cache hit
                    next_state <= COMPLETE;
                end if;

            when UPDATE =>
                -- Update caches
                internal_result <= dataa; -- Example operation
                next_state <= COMPLETE;

            when COMPLETE =>
                internal_done <= '1';
                next_state <= IDLE;

            when others =>
                next_state <= IDLE;
        end case;
    end process;

    result <= internal_result;
    done <= internal_done;
end architecture rtl;
