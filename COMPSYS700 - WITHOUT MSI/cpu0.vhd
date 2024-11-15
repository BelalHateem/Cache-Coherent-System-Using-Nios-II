	library ieee;
	use ieee.std_logic_1164.all;
	use ieee.numeric_std.all;

	entity cpu0 is
		 port (
			  clk            : in std_logic;
			  reset          : in std_logic;
			  read_en        : out std_logic;
			  write_en 		  : out std_logic;
			  Sdram_addr     : out std_logic_vector(2 downto 0);
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
		 
		 -- Cache line structure: Valid bit, Tag, Data
		 type cache_line is record
			  valid     : std_logic;
			  dirtyBit  : std_logic;
			  address   : std_logic_vector(2 downto 0);    -- Tag bits for identifying memory address
			  data      : std_logic_vector(31 downto 0);    -- Data block
		 end record;

		 type cache_array is array (0 to cacheSize-1) of cache_line; -- Example 4-line direct-mapped cache
		 signal cache : cache_array;
		 signal hit : std_logic;
		 
		 
		 type State_Type is (initial, requestData, writeData);
		 type cache_operation is (read_cache, write_cache, none);
		 type sdramAccess is (checkCache, readResponse);
		 
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
						 cache(i).valid <= '0';
						 cache(i).address <= (others => 'U');
						 cache(i).data <= (others => '0');
						 cache(i).dirtyBit <= '0';
					end loop;
					-- Reset signals
					hit <= '0';
					read_en <= '0';
					write_en<='0';
					wantedAddressCache <= (others => '0');
					sendDataFromCacheToCpu <= (others => '0');
					evictCounter <= 0;
					sdramState <= checkCache;
			  
			  elsif falling_edge(clk) then
					read_en <= '0';
					write_en<='0';
					hit<='0';
					case cpuCacheOperation is
						 when read_cache =>    
							  case sdramState is
									when checkCache =>
										 isInCache := false;
											 for i in 0 to cacheSize-1 loop
												  if((cache(i).valid = '1') and (wantedAddressLatch = cache(i).address)) then
														isInCache := true;
														indexOfCache := i;
												  end if;
											 end loop;
										 if(isInCache) then
											  hit <= '1';
											  sendDataFromCacheToCpu <= cache(indexOfCache).data;
										 else
											  wantedAddressCache <= wantedAddressLatch;
											  hit <= '0';
											  read_en <= '1';
											  Sdram_addr <= wantedAddressLatch;
											  sdramState <= readResponse;
										 end if;
									when readResponse =>    
										 hit <= '1';
										 sendDataFromCacheToCpu <= Sdram_data_in;
										 isCacheFull := true;
											 for i in cacheSize-1 downto 0 loop
												  if(cache(i).valid = '0') then
														isCacheFull := false;
														emptyCacheIndex := i;
												  end if;
											 end loop;
										 if(isCacheFull = false) then
											  cache(emptyCacheIndex).data <= Sdram_data_in;
											  cache(emptyCacheIndex).address <= wantedAddressCache;
											  cache(emptyCacheIndex).valid <= '1';
										 else
											  -- round robin method, maybe use LRU later on
											  if(cache(evictCounter).dirtyBit = '1') then
													write_en<='1';
													Sdram_data_out <= cache(evictCounter).data;
													Sdram_addr <= cache(evictCounter).address;
											  end if;
											  cache(evictCounter).dirtyBit <= '0';
											  cache(evictCounter).data <= Sdram_data_in;
											  cache(evictCounter).address <= wantedAddressCache;
											  if(evictCounter = cacheSize-1) then
													evictCounter <= 0;
											  else
													evictCounter <= evictCounter + 1;
											  end if;
										 end if;
										 sdramState <= checkCache;
--									 when none => 
--										
--										null;
							  end case;
						 when write_cache =>
							  isInCache := false;
						
							  for i in 0 to cacheSize-1 loop
									if((cache(i).valid = '1') and (wantedAddressLatch = cache(i).address)) then
										 isInCache := true;
										 indexOfCache := i;
									end if;
							  end loop;
							  
							  if(isInCache) then
									cache(indexOfCache).data <= dataToSendToCache;
									cache(indexOfCache).dirtyBit <= '1';
							  else
									isCacheFull := true;
									for i in cacheSize-1 downto 0 loop
										 if(cache(i).valid = '0') then
											  isCacheFull := false;
											  emptyCacheIndex := i;
										 end if;
									end loop;
									if(isCacheFull = false) then
										 cache(emptyCacheIndex).data <= dataToSendToCache;
										 cache(emptyCacheIndex).address <= wantedAddressLatch;
										 cache(emptyCacheIndex).valid <= '1';
										 cache(emptyCacheIndex).dirtyBit <= '1';
									else
										 -- round robin method, maybe use LRU later on
										 if(cache(evictCounter).dirtyBit = '1') then
											  write_en<='1';
											  Sdram_data_out <= cache(evictCounter).data;
											  Sdram_addr <= cache(evictCounter).address;
										 end if;
										 cache(evictCounter).dirtyBit <= '1';
										 cache(evictCounter).data <= dataToSendToCache;
										 cache(evictCounter).address <= wantedAddressLatch;
										 if(evictCounter = cacheSize-1) then
											  evictCounter <= 0;
										 else
											  evictCounter <= evictCounter + 1;
										 end if;
									end if;
							  end if;
						 when none =>
							  
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
							  cpuCacheOperation<=write_cache;
							  wantedAddressLatch <= wantedAddress;
							  dataToSendToCache <= x"00000007";
						 when requestData =>
							  if(hit = '1') then
									wantedAddressLatch <= wantedAddress;
									CurrentState <= writeData;
									cpuCacheOperation<= write_cache;
									dataToSendToCache <= x"00000007";
							  end if;
						 when writeData =>
							  -- Randomly generate the wantedAddress later on
							  wantedAddressLatch <= wantedAddress;
							  cpuCacheOperation <= read_cache;
							  CurrentState <= requestData;
							
					end case;
			  end if;
		 end process;
	end Behavioral;
