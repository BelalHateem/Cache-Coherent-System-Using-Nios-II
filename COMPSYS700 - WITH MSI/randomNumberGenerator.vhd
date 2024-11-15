library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity randomNumberGenerator is
    port (
        clk       : in std_logic;
        reset     : in std_logic;
        rand_num1 : out std_logic_vector(2 downto 0);  -- 3-bit output for the first random number
        rand_num2 : out std_logic_vector(2 downto 0)   -- 3-bit output for the second random number
    );
end randomNumberGenerator;

architecture Behavioral of randomNumberGenerator is
    -- Internal signals for the LFSRs
    signal lfsr1 : std_logic_vector(2 downto 0) := "001";  -- Initialize the first LFSR with a non-zero value
    signal lfsr2 : std_logic_vector(2 downto 0) := "011";  -- Initialize the second LFSR with a different non-zero value
begin

    -- Process to generate the first random number on the rising edge of the clock
    process (clk, reset)
    begin
        if reset = '1' then
            lfsr1 <= "001";  -- Reset the first LFSR to an initial value
        elsif rising_edge(clk) then
            -- Feedback logic for the first LFSR
            if lfsr1 = "000" then
                lfsr1 <= "001";  -- If lfsr1 becomes zero, reset it to a non-zero value
            else
                -- XOR feedback for randomness
                lfsr1 <= lfsr1(1 downto 0) & (lfsr1(2) xor lfsr1(1));
            end if;
        end if;
    end process;

    -- Process to generate the second random number on the rising edge of the clock
    process (clk, reset)
    begin
        if reset = '1' then
            lfsr2 <= "011";  -- Reset the second LFSR to a different initial value
        elsif rising_edge(clk) then
            -- Feedback logic for the second LFSR
            if lfsr2 = "000" then
                lfsr2 <= "011";  -- If lfsr2 becomes zero, reset it to a non-zero value
            else
                -- XOR feedback for randomness (slightly different from lfsr1 for variety)
                lfsr2 <= lfsr2(1 downto 0) & (lfsr2(2) xor lfsr2(0));
            end if;
        end if;
    end process;

    -- Output the LFSR values as the random numbers
    rand_num1 <= lfsr1;
    rand_num2 <= lfsr2;

end Behavioral;
