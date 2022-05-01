library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity declaraciones is
port(
a:in bit;
b:in bit;
c:in bit_vector(3 downto 0)
);    
end declaraciones;
 
architecture Behavioral of declaraciones is
signal temp:bit:='1';
signal temp1:bit_vector:='0000';
signal temp2:boolean:= true;
signal temp3:interger:=0;
process(clk)
 
end process;
 

 
end Behavioral;