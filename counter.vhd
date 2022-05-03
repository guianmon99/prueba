----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.05.2022 09:47:39
-- Design Name: 
-- Module Name: counter - Behavioral
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
use IEEE.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
 
entity counter is
    Port ( rst,clk,dwn : in std_logic;
           dout: out std_logic_vector(3 downto 0));
end counter;
 
architecture count_arch of counter is
signal count : std_logic_vector(3 downto 0) := "0000";
    begin
      process(rst,clk)
        begin
          if (rst = '1') then
          count <= "0000";
          elsif (clk'event and clk = '1') then
                   if (dwn = '1') then 
                       count <= count - 1;
                   else   
                       count <= count + 1;
                   end if;
          end if;
         end process;
  dout <= count;
end count_arch;