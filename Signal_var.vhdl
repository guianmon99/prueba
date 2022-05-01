library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity top is
port(
a: in std_logic_vector(3 downto 0);
y: out std_logic_vector(3 downto 0)
);

end top;

architecture behavioral of top is

--formas de inicialisar una señal 

signal temp: std_logic_vector(3 downto 0):= "0000";
signal temp2:std_logic_vector(16 downto 0):= x"0000";-- esto esta en hexadecial
signal temp3:std_logic_vector(127 downto 0):=(others => '0');



begin 
temp<= a;
p1:process(a)
variable temp1: std_logic_vector(3 downto 0):="0000";
begin
temp:=a; -- := es un operador de asignacion de variables
end process
y<=temp; -- := es un operador de asignacion de señales y sirve para señales y puertos 

end behavioral;