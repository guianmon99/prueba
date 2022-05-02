
library IEEE
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.all;

entity btog is 
end btog;

architecture behavioral of btog is

signal din: unsigned(3 downto 0):= "1010";
signal llshift: unsigned(3 downto 0):= "0000";
signal lrshift: unsigned(3 downto 0):= "0000";
signal din2: signed(3 downto 0):= "1010";
signal alshift signed(3 downto 0):="0000";
signal arshift signed(3 downto 0):="0000";



begin 
llshift <= shift_left(din,1);
lrshift <= shift_right(din,1);


alshift <= shift_left(din,1);
arshift <= shift_right(din,1);


end behavioral;