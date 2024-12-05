----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:30:25 05/03/2024 
-- Design Name: 
-- Module Name:    bit8_BCD - Behavioral 
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


entity bit8_BCD is PORT (
	ulaz: IN std_logic_vector(7 downto 0);
	stotice, desetice, jedinice: OUT std_logic_vector(3 downto 0)
);
end bit8_BCD;

architecture Behavioral of bit8_BCD is
	SIGNAL o13, o12, o11, o10, o23, o22, o21, o20, o33, o32, o31, o30, o42, o41, o40, o53, o52, o51, o50: std_logic;
begin

s1: ENTITY work.double_dabble port map('0', ulaz(7), ulaz(6), ulaz(5), o13, o12, o11, o10);
s2: ENTITY work.double_dabble port map(o12, o11, o10, ulaz(4), o23, o22, o21, o20);
s3: ENTITY work.double_dabble port map(o22, o21, o20, ulaz(3), o33, o32, o31, o30);
s4: ENTITY work.double_dabble port map('0', o13, o23, o33, stotice(1), o42, o41, o40);
s5: ENTITY work.double_dabble port map(o32, o31, o30, ulaz(2), o53, o52, o51, o50);
s6: ENTITY work.double_dabble port map(o42, o41, o40, o53, stotice(0), desetice(3), desetice(2), desetice(1));
s7: ENTITY work.double_dabble port map(o52, o51, o50, ulaz(1), desetice(0), jedinice(3), jedinice(2), jedinice(1));

stotice(3) <= '0';
stotice(2) <= '0';
jedinice(0) <= ulaz(0);

end Behavioral;

