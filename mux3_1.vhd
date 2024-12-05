----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:37:34 05/04/2024 
-- Design Name: 
-- Module Name:    mux3_1 - Behavioral 
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


entity mux3_1 is PORT (
	x0, x1, x2: IN std_logic_vector(3 downto 0);
	a: IN std_logic_vector(1 downto 0);
	y: OUT std_logic_vector(3 downto 0)
);
end mux3_1;

architecture Behavioral of mux3_1 is
begin

	with a SELECT
	
	Y <=		x0 when "00",
				x1 when "01",
				x2 when others;

end Behavioral;

