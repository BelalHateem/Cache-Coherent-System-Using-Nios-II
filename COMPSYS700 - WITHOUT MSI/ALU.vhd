library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ALU is
    port (
        A           : in std_logic_vector(31 downto 0);   -- Input A
        B           : in std_logic_vector(31 downto 0);   -- Input B
        ALUControl  : in std_logic_vector(3 downto 0);    -- Control signal to select operation
        Result      : out std_logic_vector(31 downto 0);  -- Output Result
        Zero        : out std_logic                       -- Zero flag for result
    );
end ALU;

architecture Behavioral of ALU is
begin
    process(A, B, ALUControl)
    begin
        case ALUControl is
            when "0000" =>  -- Addition
                Result <= std_logic_vector(signed(A) + signed(B));
            when "0001" =>  -- Subtraction
                Result <= std_logic_vector(signed(A) - signed(B));
            when "0010" =>  -- Multiplication
                Result <= std_logic_vector(signed(A) * signed(B));
            when "0011" =>  -- Division
                if B /= (others => '0') then
                    Result <= std_logic_vector(signed(A) / signed(B));
                else
                    Result <= (others => '0');  -- Avoid divide by zero
                end if;
            when "0100" =>  -- AND operation
                Result <= A and B;
            when "0101" =>  -- OR operation
                Result <= A or B;
            when "0110" =>  -- XOR operation
                Result <= A xor B;
            when others =>  -- Default case: Set result to zero
                Result <= (others => '0');
        end case;

        -- Set Zero flag
        if Result = (others => '0') then
            Zero <= '1';
        else
            Zero <= '0';
        end if;
    end process;
end Behavioral;
