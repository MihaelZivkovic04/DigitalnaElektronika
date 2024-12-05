----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:55:00 05/04/2024 
-- Design Name: 
-- Module Name:    freq_divider - Behavioral 
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


entity freq_divider is

generic(nfCLK: natural := 100);

PORT (
	clk: IN std_logic;
	clk_o: buffer std_logic
);
end freq_divider;

architecture Behavioral of freq_divider is
begin

	Process(clk)
		variable temp: integer range 0 to nfCLK / 2:= 0;
	BEGIN
	
	if (clk'event AND clk = '1') then
	
	temp := temp + 1;
			
			if (temp >= nfCLK /2) then
					clk_o <= not clk_o;
					temp := 0;
			end if;
	end if;
	end Process;
	
end Behavioral;

