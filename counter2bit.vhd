----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:05:26 05/12/2024 
-- Design Name: 
-- Module Name:    counter2bit - Behavioral 
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

entity counter2bit is PORT (
	clk, rst: IN std_logic;
	izlaz: OUT std_logic_vector(1 downto 0)
);
end counter2bit;

architecture Behavioral of counter2bit is
type stanje is (stanje1, stanje2, stanje3);
SIGNAL sad_stanje, slje_stanje: stanje;
begin
	
	Process(clk, rst)
	BEGIN
		
		if(rst = '1') then
				sad_stanje <= stanje1;
		elsif (clk'event AND clk = '1') then
				sad_stanje <= slje_stanje;
		end if;
		
	END Process;
	
	Process(sad_stanje)
	BEGIN
			case sad_stanje is
					when stanje1 =>
							izlaz <= "00";
							slje_stanje <= stanje2;
					when stanje2 =>
							izlaz <= "01";
							slje_stanje <= stanje3;
					when stanje3 =>
							izlaz <= "10";
							slje_stanje <= stanje1;
			end case;
	END Process;
	
end Behavioral;

