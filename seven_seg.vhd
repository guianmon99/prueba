----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.05.2022 16:13:29
-- Design Name: 
-- Module Name: seven_seg - Behavioral
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

entity seven_seg is
    Port ( b : in STD_LOGIC_VECTOR (2 downto 0);
           anode : out STD_LOGIC_VECTOR (3 downto 0);
           catode : out STD_LOGIC_VECTOR (7 downto 0));
end seven_seg;

architecture Behavioral of seven_seg is

begin
anode<="0111";
process(b)
begin
case(b) is 
when "000"=>
catode<=x"03";

when "001"=>
catode<=x"9f";

when "010"=>
catode<=x"25";

when "011"=>
catode<=x"0d";

when "100"=>
catode<=x"99";

when "101"=>
catode<=x"49";

when "110"=>
catode<=x"c1";

when "111"=>
catode<=x"1f";

when others =>
catode<= x"ff";
end case; 
end process;

end Behavioral;
