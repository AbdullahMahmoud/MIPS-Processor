----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:39:00 04/06/2017 
-- Design Name: 
-- Module Name:    Mux4x1 - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Mux4x1 is

PORT(	I3: 	IN STD_LOGIC;
		I2: 	IN STD_LOGIC;
		I1: 	IN STD_LOGIC;
		I0: 	IN STD_LOGIC;
		S:	IN STD_LOGIC_vector(1 downto 0);
		O:	OUT STD_LOGIC);
end Mux4x1;

architecture Behavioral of Mux4x1 is

begin
	O <=	I0 WHEN (S="00") ELSE
			I1 WHEN (S="01") ELSE
			I2 WHEN (S="10") ELSE
			I3 WHEN (S="11") ELSE
			'X';
end Behavioral;

