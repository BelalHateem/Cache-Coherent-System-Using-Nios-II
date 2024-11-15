library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity testbenchValidation is
end entity testbenchValidation;

architecture rtl of testbenchValidation is
    -- Signal declarations
    signal clk   : std_logic := '0';
    signal reset : std_logic := '0';

    -- Clock period constant (adjust this as needed)
    constant clk_period : time := 10 ns;
	 signal cpu0_prio: std_logic;
	 signal cpu1_prio: std_logic;
    signal wantedAddress0: std_logic_vector(2 downto 0);
	 signal wantedAddress1: std_logic_vector(2 downto 0);
	 
COMPONENT TransactionsBetweenCPU
	PORT(clk : IN STD_LOGIC;
	    rst : IN STD_LOGIC;
  	    cpu0_prio :  IN  STD_LOGIC;
		 cpu1_prio1 :  IN  STD_LOGIC;
		 cpu0_wantedAddr :  IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
		 cpu1_wantedAddr :  IN  STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
    
begin
b2v_inst : TransactionsBetweenCPU
PORT MAP(clk => clk,
	rst=>reset,
	cpu0_prio => cpu0_prio,
   cpu1_prio1 => cpu1_prio,
   cpu0_wantedAddr =>wantedAddress0,
   cpu1_wantedAddr =>wantedAddress1
);

    -- Clock generation process
    clk_process : process
    begin
        while true loop
            clk <= '0';
            wait for clk_period / 2;
            clk <= '1';
            wait for clk_period / 2;
        end loop;
    end process clk_process;

    -- Reset generation process
    reset_process : process
    begin
	     cpu0_prio<='1';
		  cpu1_prio<='0';
        reset <= '1';              -- Activate reset
        wait for 20 ns;            -- Wait for some time (adjust as needed)
        reset <= '0';              -- Deactivate reset
        wait;                      -- Continue indefinitely
    end process reset_process;
	 
	 test	: process
	 begin
	 wantedAddress0<="100";
	 wantedAddress1<="100";
	 wait;
	 end process test;

end architecture rtl;
