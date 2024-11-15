library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity clock is
    port (
        clk_out   : out std_logic;  -- Generated clock signal
        reset     : out std_logic;  -- Reset signal
        cpu0_prio : out std_logic;  -- CPU0 priority signal
        cpu1_prio : out std_logic   -- CPU1 priority signal
    );
end clock;

architecture Behavioral of clock is
    -- Define internal signals
    signal clk_reg        : std_logic := '0';   -- Register for the clock output
    signal internal_reset : std_logic := '1';   -- Reset initially active
    signal counter        : integer := 0;       -- Counter for clock generation
    constant ClockFrequency  : integer := 50e6;  -- 50 MHz input clock frequency
    constant DesiredClockFreq : integer := 1e6;  -- Desired clock frequency (e.g., 1 MHz)
    constant DividerValue : integer := ClockFrequency / (2 * DesiredClockFreq);  -- Clock division factor
    constant ResetDuration : integer := 60;     -- Number of clock cycles for reset assertion
    signal reset_counter  : integer := 0;       -- Counter for reset duration
begin
    -- Clock generation process
    process (clk_reg)
    begin
        if rising_edge(clk_reg) then
            if counter < DividerValue - 1 then
                counter <= counter + 1;
            else
                counter <= 0;
                clk_reg <= not clk_reg;  -- Toggle the clock
            end if;
        end if;
    end process;

    -- Reset logic process
    process (clk_reg)
    begin
        if rising_edge(clk_reg) then
            if reset_counter < ResetDuration then
                internal_reset <= '1';  -- Assert reset signal
                reset_counter <= reset_counter + 1;
            else
                internal_reset <= '0';  -- Deassert reset signal
            end if;
        end if;
    end process;

    -- Output priority signals (you can customize the logic here)
    process (clk_reg)
    begin
        if rising_edge(clk_reg) then
            cpu0_prio <= '1';  -- CPU0 has priority
            cpu1_prio <= '0';  -- CPU1 has no priority (you can modify this logic)
        end if;
    end process;

    -- Assign internal signals to output ports
    clk_out <= clk_reg;
    reset <= internal_reset;

end Behavioral;
