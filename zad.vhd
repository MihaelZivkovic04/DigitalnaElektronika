----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:25:08 05/16/2024 
-- Design Name: 
-- Module Name:    zad - Behavioral 
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


entity zad is PORT (
	push, rst, clk: IN std_logic;
	an: OUT std_logic_vector(2 downto 0);
	seg: OUT std_logic_vector(6 downto 0)
);
end zad;

architecture Behavioral of zad is
	SIGNAL sto, deset, jedan: std_logic_vector(3 downto 0);
begin
	
	sk0: ENTITY work.sklop1 port map(push, rst, clk, sto, deset, jedan);
	
	sk1: ENTITY work.BCD port map(clk, rst, jedan, deset, sto);

end Behavioral;

