library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity clock is
    port (
        clk   : out std_logic;
        reset : out std_logic
    );
end clock;

architecture Behavioral of clock is
    -- Define internal signals to drive the clock and reset
    signal internal_clk : std_logic := '0';
    signal internal_reset : std_logic := '1'; -- Reset initially active
    constant ClockFrequency: integer := 50e6; -- 50 MHz
    constant ClockPeriod: time := 1 sec / ClockFrequency; -- 20 ns
begin
    -- Clock generation process
    process
    begin
        -- Generate clock by toggling every half of ClockPeriod (10ns for 50 MHz)
        while true loop
            internal_clk <= '1';
            wait for ClockPeriod / 2;
            internal_clk <= '0';
            wait for ClockPeriod / 2;
        end loop;
    end process;

    -- Reset logic process
    process
    begin
        -- Assert reset for 60 ns
        internal_reset <= '1';  -- Assert reset signal
        wait for 60 ns;
        internal_reset <= '0';  -- Deassert reset signal after 60 ns

        -- Allow the process to end after reset has been deasserted
        wait;
    end process;

    -- Assign the internal clock and reset signals to the output ports
    clk <= internal_clk;
    reset <= internal_reset;

end Behavioral;
