library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity arbiter is
    port (
        clk : in std_logic;
        reset : in std_logic;
        -- Request signals from each CPU
        request_0 : in std_logic;
        request_1 : in std_logic;
        request_2 : in std_logic;
        request_3 : in std_logic;
        -- Grant signals to each CPU
        grant_0 : out std_logic;
        grant_1 : out std_logic;
        grant_2 : out std_logic;
        grant_3 : out std_logic
    );
end entity arbiter;

architecture Behavioral of arbiter is
    signal current_grant : std_logic_vector(1 downto 0) := "00";
    signal granted : std_logic := '0';
begin
    process(clk, reset)
    begin
        if reset = '1' then
            current_grant <= "00";
            granted <= '0';
            grant_0 <= '0';
            grant_1 <= '0';
            grant_2 <= '0';
            grant_3 <= '0';
        elsif rising_edge(clk) then
            if not granted = '1' then
                if request_0 = '1' then
                    current_grant <= "00";
                    grant_0 <= '1';
                    grant_1 <= '0';
                    grant_2 <= '0';
                    grant_3 <= '0';
                    granted <= '1';
                elsif request_1 = '1' then
                    current_grant <= "01";
                    grant_0 <= '0';
                    grant_1 <= '1';
                    grant_2 <= '0';
                    grant_3 <= '0';
                    granted <= '1';
                elsif request_2 = '1' then
                    current_grant <= "10";
                    grant_0 <= '0';
                    grant_1 <= '0';
                    grant_2 <= '1';
                    grant_3 <= '0';
                    granted <= '1';
                elsif request_3 = '1' then
                    current_grant <= "11";
                    grant_0 <= '0';
                    grant_1 <= '0';
                    grant_2 <= '0';
                    grant_3 <= '1';
                    granted <= '1';
                else
                    grant_0 <= '0';
                    grant_1 <= '0';
                    grant_2 <= '0';
                    grant_3 <= '0';
                    granted <= '0';
                end if;
            end if;
        end if;
    end process;
end architecture Behavioral;
