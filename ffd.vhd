----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.05.2022 14:35:17
-- Design Name: 
-- Module Name: ffd - Behavioral
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

entity ffd is
    Port ( clk,rst,din : in STD_LOGIC;
           dout : out STD_LOGIC);
end ffd;

architecture Behavioral of ffd is
begin
process(clk)
begin
    if(rising_edge(clk))then 
        if(rst='1') then 
            dout<='0';
            
         else 
            dout<= din;
         end if; 
end if;
end process;





end Behavioral;
