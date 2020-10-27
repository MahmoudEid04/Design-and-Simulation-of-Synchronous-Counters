library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity clock1Hz is
port(clk : in std_logic;
     clk1Hz: out std_logic
     );
end clock1Hz;

architecture behavioral of clock1Hz is 
signal temp_out: std_logic;
begin
process(clk)
variable int_counter: integer range 0 to 50000000;
variable reset : std_logic := '1';
begin
if(clk'event and clk='1') then
	if (reset='1') then
		temp_out <= '0';
		reset := '0';
	else
		if(int_counter=50000000) then
			temp_out <= not temp_out;
			int_counter:=0;
		else
			int_counter:= int_counter+1;
		
		end if;	
	end if;
end if;
end process;
clk1Hz <= temp_out;
end behavioral;
	