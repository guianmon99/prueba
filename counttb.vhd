library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity counttb is 

end counttb;

architecture behavioral of counttb is 
signal rst,clk,dwn: std_logic:= '0';
signal dout: std_logic_vector(3 downto 0):= "0000";

component counter is 
port(
rst,clk,dwn: in std_logic;
dout: out std_logic_vector(3 downto 0)
);
end component;
 
begin 
c1: counter port map(rst=> rst, clk=>clk,dwn=>dwn,dout=>dout); 

clk_process: process(clk)
begin
clk<=not(clk) after 10ns; 
end process;

control_process:process 
begin
rst<='1';
wait for 50ns;
rst<='0';
dwn<='1';
wait for 200ns; 
dwn<='0';
wait for 50ns;
rst<='1';
wait for 50ns; 

wait;
end process;
end behavioral;