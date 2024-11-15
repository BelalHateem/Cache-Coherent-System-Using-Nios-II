library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cpu0 is
     port (
          clk            : in std_logic;
          reset          : in std_logic;
          read_en        : out std_logic;
          write_en       : out std_logic;
          Sdram_addr     : out std_logic_vector(2 downto 0);
          priority       : in std_logic;

           -- MSI output
          cpu_wr_req_out       : out std_logic; --iCPU to cache for snooping
          cpu_rd_req_out       : out std_logic; --iCPU to Cache for snooping
          cpu_req_addr_out     : out std_logic_vector(2 downto 0); -- address of our cpu action

          cache_to_cache_resp_out_ready : out std_logic; -- data on bus valid
          cache_to_cache_resp_out       : out std_logic; -- whether or not data found in our cache, sent to other cache
          cache_to_cache_resp_out_data  : out std_logic_vector(31 downto 0); -- data being updated due invalid data

          cache_to_cache_req_out : out std_logic; -- our data invalid, check other cache
          cache_to_cache_req_address_out : out std_logic_vector(2 downto 0); -- address out to update/read state

          -- MSI in
          cpu_wr_req_in     : in std_logic; --iCPU to cache for snooping other
          cpu_rd_req_in     : in std_logic;  --iCPU to cache for snooping other
          cpu_req_addr_in   : in std_logic_vector(2 downto 0); -- address of other cpu action

          cache_to_cache_resp_in_ready : in std_logic; -- other cache ready to respond
          cache_to_cache_resp_in       : in std_logic; -- whether other cache has the data or not 
          cache_to_cache_resp_in_data  : in std_logic_vector(31 downto 0); -- if hit get data

          cache_to_cache_req_in : in std_logic; -- other cache wants check our cache
          cache_to_cache_req_address_in : in std_logic_vector(2 downto 0); -- address of request to check

          --to cpu
          Sdram_data_in  : in std_logic_vector(31 downto 0);
          --to sdram
          Sdram_data_out : out std_logic_vector(31 downto 0);
          wantedAddress : in std_logic_vector(2 downto 0)
     );
end cpu0;

architecture Behavioral of cpu0 is
     -- constants
     constant cacheSize : integer := 4;

     type state is (modified, sharedd, invalid);

     -- Cache line structure: Valid bit, Tag, Data
     type cache_line is record
          MSI     : state;
          address   : std_logic_vector(2 downto 0);    -- Tag bits for identifying memory address
          data      : std_logic_vector(31 downto 0);    -- Data block
     end record;

     type cache_array is array (0 to cacheSize-1) of cache_line; -- Example 4-line direct-mapped cache
     signal cache : cache_array;
     signal hit : std_logic;

     type State_Type is (initial, requestData, writeData);
     type cache_operation is (read_cache, write_cache, none);
     type sdramAccess is (checkCache, readResponseSDRAM, readResponseCACHE);

     signal CurrentState : State_Type := initial; 
     signal cpuCacheOperation : cache_operation := none; 
     signal sdramState : sdramAccess := checkCache;
     signal sendDataFromCacheToCpu : std_logic_vector(31 downto 0);
     signal wantedAddressCache : std_logic_vector(2 downto 0);
     signal dataToSendToCache : std_logic_vector(31 downto 0);
     signal wantedAddressLatch : std_logic_vector(2 downto 0);
     -- round-robin
     signal evictCounter : integer range 0 to 3 := 0;

begin
     -- Cache access logic
     process(clk, reset)
          variable isInCache : boolean := false;
          variable isCacheFull : boolean := false;
          -- its two because we only need to access address 0 to cacheSize-1 
          variable indexOfCache : integer range 0 to cacheSize-1 := 0;
          variable emptyCacheIndex : integer range 0 to cacheSize-1 := 0;
     begin
          if reset = '1' then
               -- Reset the cache
               for i in 0 to cacheSize-1 loop
                    cache(i).MSI <= invalid;
                    cache(i).address <= (others => 'U');
                    cache(i).data <= (others => '0');
               end loop;
               -- Reset signals
               hit <= '0';
               read_en <= '0';
               write_en<='0';
               
               sendDataFromCacheToCpu <= (others => '0');
               evictCounter <= 0;
               sdramState <= checkCache;
          
          elsif falling_edge(clk) then
               --we need to snoop on other cpu to see the cache lines that have been modified to invalidate our own cache line
               read_en <= '0';
               write_en<='0';
               hit<='0';
               cache_to_cache_resp_out_ready <='0';
               
               -- Handle invalidation requests from other CPUs
               if cache_to_cache_req_in = '1' then
                    -- Check if the requested address is in our cache
                    isInCache := false;
                    for i in 0 to cacheSize-1 loop
                         if (cache(i).address = cache_to_cache_req_address_in and cache(i).MSI /= invalid) then
                              isInCache := true;
                              indexOfCache := i;
                         end if;
                    end loop;
                    -- If we have the data and it is in modified state, respond and update state to shared or invalid
                    if (isInCache and cache(indexOfCache).MSI = modified) then
                         cache(indexOfCache).MSI <= sharedd;
                         cache_to_cache_resp_out <= '1';
                         cache_to_cache_resp_out_data <= cache(indexOfCache).data;
                    else
                         cache_to_cache_resp_out <= '0';
                    end if;
                    cache_to_cache_resp_out_ready <= '1';
               end if;

               -- Handle invalidation during external write requests
               if (cpu_wr_req_in = '1') then
                    for i in 0 to cacheSize-1 loop
                         if (cache(i).address = cpu_req_addr_in and cache(i).MSI /= invalid) then
                              cache(i).MSI <= invalid;
                         end if;
                    end loop;
               end if;

               -- Service CPU requests to the cache
               wantedAddressCache <= wantedAddressLatch;
                         case cpuCacheOperation is
                    when read_cache =>
                         case sdramState is
                              when checkCache =>
                                   -- Check if the requested address is in our cache
                                   isInCache := false;
                                   for i in 0 to cacheSize-1 loop
                                        if ((cache(i).MSI /= invalid) and (wantedAddressLatch = cache(i).address)) then
                                             isInCache := true;
                                             indexOfCache := i;
                                        end if;
                                   end loop;
                                   if (isInCache) then
                                        hit <= '1';
                                        sendDataFromCacheToCpu <= cache(indexOfCache).data;
                                   else
                                        hit <= '0';
                                        sdramState <= readResponseCACHE;
                                        cache_to_cache_req_out <= '1';
                                        cache_to_cache_req_address_out <= wantedAddressLatch;
                                   end if;
                              when readResponseCACHE =>
                                   if (cache_to_cache_resp_in_ready = '1') then
                                        if (cache_to_cache_resp_in = '1') then
                                             -- Other cache hit
                                             isCacheFull := true;
                                             for i in cacheSize-1 downto 0 loop
                                                  if (cache(i).MSI = invalid) then
                                                       isCacheFull := false;
                                                       emptyCacheIndex := i;
                                                  end if;
                                             end loop;
                                             if (isCacheFull = false) then
                                                  cache(emptyCacheIndex).data <= cache_to_cache_resp_in_data;
                                                  cache(emptyCacheIndex).address <= wantedAddressCache;
                                                  cache(emptyCacheIndex).MSI <= sharedd;
                                             else
                                                  -- Evict an entry using round-robin method
                                                  if (cache(evictCounter).MSI = modified) then
                                                       write_en <= '1';
                                                       Sdram_data_out <= cache(evictCounter).data;
                                                       Sdram_addr <= cache(evictCounter).address;
                                                  end if;
                                                  cache(evictCounter).MSI <= sharedd;
                                                  cache(evictCounter).data <= cache_to_cache_resp_in_data;
                                                  cache(evictCounter).address <= wantedAddressCache;
                                                  if (evictCounter = cacheSize-1) then
                                                       evictCounter <= 0;
                                                  else
                                                       evictCounter <= evictCounter + 1;
                                                  end if;
                                             end if;
                                        else
                                             -- Other cache miss
                                             read_en <= '1';
                                             Sdram_addr <= wantedAddressLatch;
                                             sdramState <= readResponseSDRAM;
                                        end if;
                                   end if;
                              when readResponseSDRAM =>
                                   hit <= '1';
                                   sendDataFromCacheToCpu <= Sdram_data_in;
                                   isCacheFull := true;
                                   for i in cacheSize-1 downto 0 loop
                                        if (cache(i).MSI = invalid) then
                                             isCacheFull := false;
                                             emptyCacheIndex := i;
                                        end if;
                                   end loop;
                                   if (isCacheFull = false) then
                                        cache(emptyCacheIndex).data <= Sdram_data_in;
                                        cache(emptyCacheIndex).address <= wantedAddressCache;
                                        cache(emptyCacheIndex).MSI <= sharedd;
                                   else
                                        -- Evict an entry using round-robin method
                                        if (cache(evictCounter).MSI = modified) then
                                             write_en <= '1';
                                             Sdram_data_out <= cache(evictCounter).data;
                                             Sdram_addr <= cache(evictCounter).address;
                                        end if;
                                        cache(evictCounter).MSI <= sharedd;
                                        cache(evictCounter).data <= Sdram_data_in;
                                        cache(evictCounter).address <= wantedAddressCache;
                                        if (evictCounter = cacheSize-1) then
                                             evictCounter <= 0;
                                        else
                                             evictCounter <= evictCounter + 1;
                                        end if;
                                   end if;
                                   sdramState <= checkCache;
                         end case;
                    when write_cache =>
                         -- Handle write requests
                         if (cpu_wr_req_in = '1' and cpu_req_addr_in = wantedAddressLatch and priority = '0') then
                              -- Abort write as priority is not granted
                              isInCache := false;
                              for i in 0 to cacheSize-1 loop
                                   if ((cache(i).MSI /= invalid) and (wantedAddressLatch = cache(i).address)) then
                                        isInCache := true;
                                        indexOfCache := i;
                                   end if;
                              end loop;
                              if (isInCache) then
                                   cache(indexOfCache).MSI <= invalid;
                              end if;
                         else
                              isInCache := false;
                              for i in 0 to cacheSize-1 loop
                                   if ((cache(i).MSI /= invalid) and (wantedAddressLatch = cache(i).address)) then
                                        isInCache := true;
                                        indexOfCache := i;
                                   end if;
                              end loop;
                              if (isInCache) then
                                   cache(indexOfCache).data <= dataToSendToCache;
                                   cache(indexOfCache).MSI <= modified;
                              else
                                   isCacheFull := true;
                                   for i in cacheSize-1 downto 0 loop
                                        if (cache(i).MSI = invalid) then
                                             isCacheFull := false;
                                             emptyCacheIndex := i;
                                        end if;
                                   end loop;
                                   if (isCacheFull = false) then
                                        cache(emptyCacheIndex).data <= dataToSendToCache;
                                        cache(emptyCacheIndex).address <= wantedAddressLatch;
                                        cache(emptyCacheIndex).MSI <= modified;
                                   else
                                        -- Evict an entry using round-robin method
                                        if (cache(evictCounter).MSI = modified) then
                                             write_en <= '1';
                                             Sdram_data_out <= cache(evictCounter).data;
                                             Sdram_addr <= cache(evictCounter).address;
                                        end if;
                                        cache(evictCounter).MSI <= modified;
                                        cache(evictCounter).data <= dataToSendToCache;
                                        cache(evictCounter).address <= wantedAddressLatch;
                                        if (evictCounter = cacheSize-1) then
                                             evictCounter <= 0;
                                        else
                                             evictCounter <= evictCounter + 1;
                                        end if;
                                   end if;
                              end if;
                         end if;
                    when none =>
                         null;
               end case;
          end if;
     end process;

     -- CPU process
     process(clk, reset)
     begin
          if reset = '1' then
               CurrentState <= initial;
               dataToSendToCache <= (others => '0');
               cpuCacheOperation <= none;
          elsif rising_edge(clk) then
               case CurrentState is
                    when initial =>
                         -- Randomly generate the wantedAddress later on
                         CurrentState <= writeData;
                         cpu_wr_req_out <= '1';
                         cpu_rd_req_out <= '0';
                         cpuCacheOperation <= write_cache;
                         wantedAddressLatch <= wantedAddress;
                         cpu_req_addr_out <= wantedAddress;
                         dataToSendToCache <= x"00000007";
                    when requestData =>
                         cpu_wr_req_out <= '0';
                         cpu_rd_req_out <= '0';
                         if (hit = '1') then
                              wantedAddressLatch <= wantedAddress;
                              cpu_req_addr_out <= wantedAddress;
                              CurrentState <= writeData;
                              cpu_wr_req_out <= '1';
                              cpuCacheOperation <= write_cache;
                              dataToSendToCache <= x"00000007";
                         end if;
                    when writeData =>
                         wantedAddressLatch <= wantedAddress;
                         cpu_req_addr_out <= wantedAddress;
                         cpuCacheOperation <= read_cache;
                         CurrentState <= requestData;
                         cpu_rd_req_out <= '1';
                         cpu_wr_req_out <= '0';
               end case;
          end if;
     end process;
end Behavioral;