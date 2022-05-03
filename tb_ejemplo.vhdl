library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity top is
Port (
a,b : in bit_vector(3 downto 0);
y : out bit_vector(3 downto 0)
 );
end top;
 
architecture Behavioral of top is
 
begin
 
y <= a or b;
 
end Behavioral;
 
----------------------------Testbench Code------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity toptb is 
end toptb;
 
architecture toptb2 of toptb is
 
component top is
Port (
a,b : in bit_vector(3 downto 0);
y : out bit_vector(3 downto 0)
 );
end component;
 
 
signal a,b : bit_vector(3 downto 0) := "0000";
signal y : bit_vector(3 downto 0);
 
begin
 
T1 : top port map (a => a, b => b, y => y);
 
 
--a <= "0110" after 10ns, "1010" after 20 ns, "0100" after 30 ns;
--b <= "1111" after 10ns, "0110" after 20 ns, "1000" after 30 ns;
 
process(a)
begin
a(0) <= not a(0) after 10 ns;
a(1) <= not a(1) after 20 ns;
a(2) <= not a(2) after 50 ns;
end process;
 
process
begin
a(3) <= not a(3);
wait for 10 ns;
end process;
 
 
 
process
begin
wait for 10 ns;
b <= "1010";
wait for 10 ns;
b <= "0110";
wait for 10 ns;
b <= "1000";
wait for 10 ns;
wait;
end process;
 
end toptb2;