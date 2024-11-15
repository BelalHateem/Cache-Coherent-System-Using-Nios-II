library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sdram is
    port (
        clk          : in std_logic;
		  reset			: in std_logic;

        addr1        : in std_logic_vector(2 downto 0);
		  addr2        : in std_logic_vector(2 downto 0);
        data_in1     : in std_logic_vector(31 downto 0);
		  data_in2     : in std_logic_vector(31 downto 0);
        data_out1    : out std_logic_vector(31 downto 0);
		  data_out2    : out std_logic_vector(31 downto 0);
        operation1 	: in std_logic;  ---read is 0, write is 1
		  operation2   : in std_logic;  ---read is 0, write is 1
		  ready1			: in std_logic;
		  ready2			: in std_logic
    );
end sdram;

architecture Behavioral of sdram is
    type memory_type is array (0 to 7) of std_logic_vector(31 downto 0);
    signal memory : memory_type := (others => (others => '0'));
begin

    process(clk, reset)
    begin
		  if reset = '1' then
			 memory(0) <= x"00000000";
			 memory(1) <= x"00000001";
			 memory(2) <= x"00000002";
			 memory(3) <= x"00000003";
			 memory(4) <= x"00000004";
			 memory(5) <= x"00000005";
			 memory(6) <= x"00000006";
			 memory(7) <= x"00000007"; 
			 data_out1<= (others=>'U');
			 data_out2<= (others=>'U');
        elsif rising_edge(clk) then
	
		  if(ready2 = '1') then
				if(operation2 = '1') then ---write
					 memory(to_integer(unsigned(addr2(2 downto 0)))) <= data_in2;
				else ---read
					 data_out2 <= memory(to_integer(unsigned(addr2(2 downto 0))));
					 
				end if;
			end if;
			
			if(ready1 = '1') then
				if(operation1 = '1') then ---write
					 memory(to_integer(unsigned(addr1(2 downto 0)))) <= data_in1;
				else ---read
					 data_out1 <= memory(to_integer(unsigned(addr1(2 downto 0))));
					 
				end if;
			end if;
		  
        end if;
    end process;
end Behavioral;
