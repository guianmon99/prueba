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
signal temp3:interger range 0 to 100:='0';-- := sirve para inicialisar

signal temp4: std_logic := '0';
signal temp5: std_logic_vector(3 dowto 0):="0000";

type state_type is (idle,s0,s1,s2,s3,s4,s5);
signal temp6:state_type := idle; 


process(clk)
 
end process;
 

 
end Behavioral;