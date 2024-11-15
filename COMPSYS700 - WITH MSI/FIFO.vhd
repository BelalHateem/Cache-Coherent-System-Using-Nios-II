library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity FIFO is
port(
clk : in std_logic;
rst : in std_logic;

cpu0_read_in : in std_logic;
cpu0_write_in : in std_logic;
cpu0_data_in : in std_logic_vector(31 downto 0);
cpu0_addr: in std_logic_vector(2 downto 0);

cpu1_read_in : in std_logic;
cpu1_write_in : in std_logic;
cpu1_data_in : in std_logic_vector(31 downto 0);
cpu1_addr: in std_logic_vector(2 downto 0);

read_out : out std_logic;
write_out: out std_logic;

addr_out: out std_logic_vector(2 downto 0);
data_out: out std_logic_vector(31 downto 0)

);

end entity FIFO

architecture behavior of FIFO is
signal previousRequester: std_logic; ---0 is cpu0 and 1 is cpu1
 type sdramrequest is record
	requester : std_logic;
	operation : std_logic; --- 0 is read, 1 is write
	address   : std_logic_vector(2 downto 0);   
	data      : std_logic_vector(31 downto 0); 
	valid 	 : std_logic;
 end record;
 
type sdramRequestBuffer is array (0 to 1023) of sdramrequest; 

		 
begin


process(clk,rst)
begin

if(rst = '1') then


elsif(rising_edge(clk)) then
	if(sdramRequestBuffer(0).valid = '1') then
		read_out<= not sdramRequestBuffer(0).operation;
		write_out<= sdramRequestBuffer(0).operation;
		addr_out<= sdramRequestBuffer(0).address;
		data_out<= sdramRequestBuffer(0).data;
	
	
	else
		if(cpu0_read_in = '0' and cpu0_write_in = '0' and cpu1_read_in = '0' and cpu1_write_in = '0') then
			read_out<='0';
			write_out<='0';
		elsif(cpu0_read_in = '0' and cpu0_write_in = '0' and cpu1_read_in = '0' and cpu1_write_in = '1') then
			write_out<='1';
			read_out<='0';
			previousRequester<='1';
		elsif(cpu0_read_in = '0' and cpu0_write_in = '0' and cpu1_read_in = '1' and cpu1_write_in = '0') then
			write_out<='0';
			read_out<='1';
			previousRequester<='1';
		elsif(cpu0_read_in = '0' and cpu0_write_in = '1' and cpu1_read_in = '0' and cpu1_write_in = '0') then
			write_out<='1';
			read_out<='0';
			previousRequester<='0';
		elsif(cpu0_read_in = '1' and cpu0_write_in = '0' and cpu1_read_in = '0' and cpu1_write_in = '0') then
			write_out<='0';
			read_out<='1';
			previousRequester<='0';	
		elsif(cpu0_read_in = '1' and cpu0_write_in = '0' and cpu1_read_in = '1' and cpu1_write_in = '0') then
			write_out<='0';
			read_out<='1';
			previousRequester<='0';	
			sdramRequestBuffer(0).requester <= '1';
			sdramRequestBuffer(0).operation <= '0';
			sdramRequestBuffer(0).address	  <= cpu1_addr;
			sdramRequestBuffer(0).valid	  <= '1';
		elsif(cpu0_read_in = '1' and cpu0_write_in = '0' and cpu1_read_in = '0' and cpu1_write_in = '1') then
			write_out<='0';
			read_out<='1';
			previousRequester<='0';	
			sdramRequestBuffer(0).requester <= '1';
			sdramRequestBuffer(0).operation <= '1';
			sdramRequestBuffer(0).address	  <= cpu1_addr;
			sdramRequestBuffer(0).data	  	  <= cpu1_data_in;
			sdramRequestBuffer(0).valid	  <= '1';
		elsif(cpu0_read_in = '0' and cpu0_write_in = '1' and cpu1_read_in = '1' and cpu1_write_in = '0') then
			write_out<='1';
			read_out<='0';
			previousRequester<='0';	
			sdramRequestBuffer(0).requester <= '1';
			sdramRequestBuffer(0).operation <= '0';
			sdramRequestBuffer(0).address	  <= cpu1_addr;
			sdramRequestBuffer(0).valid	  <= '1';
		 elsif(cpu0_read_in = '0' and cpu0_write_in = '1' and cpu1_read_in = '0' and cpu1_write_in = '1') then
			write_out<='1';
			read_out<='0';
			previousRequester<='0';	
			sdramRequestBuffer(0).requester <= '1';
			sdramRequestBuffer(0).operation <= '1';
			sdramRequestBuffer(0).address	  <= cpu1_addr;
			sdramRequestBuffer(0).data	  	  <= cpu1_data_in;
			sdramRequestBuffer(0).valid	  <= '1';

		end if;
	end if;

end if;


end process;


end architecture behavior;