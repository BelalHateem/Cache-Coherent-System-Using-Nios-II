library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity randomNumberGenerator is
    port (
        clk      : in std_logic;
        reset    : in std_logic;
        rand_num : out std_logic_vector(2 downto 0)  -- 3-bit output for numbers between 0 and 7
    );
end randomNumberGenerator;

architecture Behavioral of randomNumberGenerator is
    -- Internal signal for the LFSR
    signal lfsr : std_logic_vector(2 downto 0) := "001";  -- Initialize the LFSR with a non-zero value
begin

    -- Process to generate random number on rising edge of the clock
    process (clk, reset)
    begin
        if reset = '1' then
            lfsr <= "001";  -- Reset the LFSR to an initial value
        elsif rising_edge(clk) then
            -- Feedback logic for the LFSR
            -- Include logic to handle the case when LFSR becomes zero to keep it cycling
            if lfsr = "000" then
                -- If lfsr becomes zero, reset it to a non-zero value to avoid getting stuck
                lfsr <= "001";
            else
                -- Feedback function to generate new values
                lfsr <= lfsr(1 downto 0) & (lfsr(2) xor lfsr(1));  -- XOR feedback for randomness
            end if;
        end if;
    end process;

    -- Output the LFSR value as the random number
    rand_num <= lfsr;

end Behavioral;
