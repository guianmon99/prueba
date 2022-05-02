----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.05.2022 14:53:05
-- Design Name: 
-- Module Name: muxcase - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity muxcase is
    Port ( a,b,c,d : in STD_LOGIC;
           sel : in STD_LOGIC_VECTOR (1 downto 0);
           y : out STD_LOGIC);
end muxcase;

architecture Behavioral of muxcase is

begin
process(a,b,c,d,sel)
begin 
 case (sel) is 
  when "00"=> 
    y<=a;
  when "01" => 
   y<=b;
   
  when "10" =>
  
  y<=c; 
  
  when "11" =>
  
  y<=d;
 end case;

end process; 

end Behavioral;
