library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity and_gate is
    Port (
        a, b: IN std_logic;
        x: OUT std_logic);
end and_gate;

architecture Behavioral of and_gate is

begin
    x<=a AND b;

end Behavioral;