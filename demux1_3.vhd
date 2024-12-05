----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:04:12 05/04/2024 
-- Design Name: 
-- Module Name:    demux1_3 - Behavioral 
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


entity demux1_3 is PORT (
	y: IN std_logic;
	a: IN std_logic_vector(1 downto 0);
	x0, x1, x2: OUT std_logic
);
end demux1_3;

architecture Behavioral of demux1_3 is
	SIGNAL i0, i1, i2: std_logic;
begin
	
	s0: ENTITY work.and_23 port map(y, a(1), a(0), i0);
	s1: ENTITY work.and_3 port map(y, a(0), a(1), i1);
	s2: ENTITY work.and_3 port map(y, a(1), a(0), i2);
	
	x0 <= not i0;
	x1 <= not i1;
	x2 <= not i2;
	
end Behavioral;

