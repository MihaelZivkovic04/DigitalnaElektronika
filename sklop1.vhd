----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:24:06 05/04/2024 
-- Design Name: 
-- Module Name:    sklop1 - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity sklop1 is PORT (
	push, reset, clk: IN std_logic;
	sto, deset, jedan: OUT std_logic_vector(3 downto 0)
);
end sklop1;

architecture opisni of sklop1 is
	SIGNAL x: std_logic_vector(7 downto 0);
	SIGNAL clk1, sig: std_logic;
begin
	
	freq: ENTITY work.freq_divider generic map(800_000) port map(clk, clk1);
	
	sklop: ENTITY work.debounce port map(push, clk1, reset, sig);
	
	Process(sig, reset)
		variable temp: std_logic_vector(7 downto 0):= "00000000";
	BEGIN
		if (reset = '1') then 
			temp := "00000000";
		elsif (sig'event and sig = '1') then
			temp := temp + 1;
	 	end if;
		x <= temp;
	END Process;
	
	sk: ENTITY work.bit8_BCD port map (x, sto, deset, jedan);
	
end opisni;
