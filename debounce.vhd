----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:06:45 05/15/2024 
-- Design Name: 
-- Module Name:    debounce - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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


entity debounce is PORT (
	ulaz, clk, rst: IN std_logic;
	izlaz: OUT std_logic
);
end debounce;

architecture Behavioral of debounce is
	SIGNAL i1, i2, i3: std_logic;
begin

	Process(clk, rst)
	BEGIN
	
		if (rst = '1') then
			i1 <= '0';
			i2 <= '0';
			i3 <= '0';
		
		elsif (clk'event AND clk = '1') then
			i1 <= ulaz;
			i2 <= i1;
			i3 <= i2;
		end if;
	END Process;
	izlaz <= (i1 AND i2) AND i3;

end Behavioral;

