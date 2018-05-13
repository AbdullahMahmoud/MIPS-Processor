----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:56:55 04/29/2017 
-- Design Name: 
-- Module Name:    GenericMux - Behavioral 
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

entity GenericMux is
Generic(n:NATURAL :=31);
    Port ( I0 : in  STD_LOGIC_vector(n-1 downto 0);
           I1 : in  STD_LOGIC_vector(n-1 downto 0);
           S : in  STD_LOGIC;
           O : out  STD_LOGIC_vector(n-1 downto 0));
end GenericMux;

architecture Behavioral of GenericMux is
signal DontCare: STD_LOGIC_vector(n-1 downto 0);
begin
DontCare <= (others => 'X');
O <= I0 when(S='0') else
	  I1 when(S='1') else
	  DontCare;
end Behavioral;

