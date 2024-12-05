----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:31:52 05/12/2024 
-- Design Name: 
-- Module Name:    BCD - Behavioral 
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

entity BCD is PORT (
	clk, rst: IN std_logic;
	jedinice, desetice, stotice: IN std_logic_vector(3 downto 0);
	an: OUT std_logic_vector(2 downto 0);
	seg: OUT std_logic_vector(6 downto 0)
);
end BCD;

architecture Behavioral of BCD is
	SIGNAL clk_o: std_logic;
	SIGNAL a: std_logic_vector(1 downto 0);
	SIGNAL ibit4: std_logic_vector(3 downto 0);
begin
	
	s0: ENTITY work.freq_divider generic map(500_000) port map(clk, clk_o);
	
	s1: ENTITY work.counter2bit port map(clk_o, rst, a);
	
	s2: ENTITY work.demux1_3 port map('1', a, an(0), an(1), an(2));
	
	s3: ENTITY work.mux3_1 port map(jedinice, desetice, stotice, a, ibit4);
	
	s4: ENTITY work.seg_7 port map(ibit4, seg);

end Behavioral;

