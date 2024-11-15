library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity testbench is
end entity testbench;

architecture rtl of testbench is
    -- Signal declarations
    signal clk   : std_logic := '0';
    signal reset : std_logic := '0';

    -- Clock period constant (adjust this as needed)
    constant clk_period : time := 10 ns;
    signal wantedAddress: std_logic_vector(2 downto 0);
	 
COMPONENT TransactionsBetweenCPU
	PORT(clk : IN STD_LOGIC;
	    reset : IN STD_LOGIC;
  	    wantedAddress : IN Std_logic_vector(2 downto 0)
	);
END COMPONENT;
    
begin
b2v_inst : TransactionsBetweenCPU
PORT MAP(clk => clk,
	reset=>reset,
	wantedAddress=>wantedAddress
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
        reset <= '1';              -- Activate reset
        wait for 20 ns;            -- Wait for some time (adjust as needed)
        reset <= '0';              -- Deactivate reset
        wait;                      -- Continue indefinitely
    end process reset_process;
	 
	 random_gen : process
		variable rand      : real;
		variable val_range : real;
		variable randomVal : integer;
		variable seed1 : positive:=1;
		variable seed2 : positive:= 1;
		variable min: integer:= 0;
		variable max: integer:= 7;
	 begin
		uniform(seed1, seed2, rand);
		val_range := real(max - min + 1);
		randomVal := integer( trunc(rand * 8.0 ))+min;
		wantedAddress <= std_logic_vector(to_unsigned(randomVal, 3));
		wait for 10 ns;
	 end process;

end architecture rtl;
