----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:46:26 05/04/2024 
-- Design Name: 
-- Module Name:    and_23 - Behavioral 
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

entity and_23 is PORT (
	a, b, c: IN std_logic;
	y: OUT std_logic
);
end and_23;

architecture Behavioral of and_23 is

begin
	
	y <= (a AND not b) AND not c;

end Behavioral;

