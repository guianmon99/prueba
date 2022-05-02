----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.05.2022 11:56:56
-- Design Name: 
-- Module Name: btog - Behavioral
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
use ieee.std_logic_unsigned.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity btog is
--  Port ( );
end btog;

architecture Behavioral of btog is
signal din1 : std_logic_vector(3 downto 0):= "0111";
signal din2 : std_logic_vector(3 downto 0):= "0001";
signal add, sub: std_logic_vector(4 downto 0):= "00000";
signal mul: std_logic_vector(7 downto 0 ):=x"00";


begin
add <= ('0'& din1) + ('0'& din2);
sub <= ('0'& din2) - ('0'& din1);
--mul<= (din1) * (din2);
end Behavioral;
