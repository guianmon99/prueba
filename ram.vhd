library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
 
 
 
entity ram_32 is
    Port ( clk,wr : in STD_LOGIC;
      oe : in std_logic;
     din : in std_logic_vector(31 downto 0);
     dout : out std_logic_Vector(31 downto 0);
     addr : in std_logic_Vector(9 downto 0)  
    );
end ram_32;
 
architecture Behavioral of ram_32 is
 
type ram_type is array (0 to 1023) of std_logic_vector(31 downto 0);
signal ram:ram_type;
signal temp : std_logic_vector(31 downto 0);
begin
 
process(clk)
begin
if(rising_edge(clk)) then
  if(wr = '1') then
    ram(to_integer(unsigned(addr))) <= din;
  else
    temp <=  ram(to_integer(unsigned(addr)));
  end if;
end if;
 
end process;
 
dout <= temp when ( oe = '1' ) else (others => 'Z');
 
end Behavioral;