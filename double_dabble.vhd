----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:39:43 05/03/2024 
-- Design Name: 
-- Module Name:    double_dabble - Behavioral 
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


entity double_dabble is PORT (
	a, b, c, d: IN std_logic;
	o3, o2, o1, o0: OUT std_logic
);
end double_dabble;

architecture Behavioral of double_dabble is
begin
	
	o3 <= (a OR (b AND d)) OR (b AND c);
	o2 <= ((b AND not c) AND not d) OR (a AND d);
	o1 <= ((c AND d) OR (a AND not d)) OR (not b AND c);
	o0 <= ((a AND not d) OR ((not a AND not b) AND d)) OR ((b AND c) AND not d);

end Behavioral;

