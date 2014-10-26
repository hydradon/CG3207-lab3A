----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:52:40 10/26/2014 
-- Design Name: 
-- Module Name:    SignExtend - SignExtend_arch 
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

entity SignExtend is
    Port ( Input : in  STD_LOGIC_VECTOR (15 downto 0);
           Output : out  STD_LOGIC_VECTOR (31 downto 0));
end SignExtend;

architecture SignExtend_arch of SignExtend is

begin
	Output(31 downto 16) <= (others => Input(15));
	Output(16 downto 0) <= Input(15 downto 0);

end SignExtend_arch;

