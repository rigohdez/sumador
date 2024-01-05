library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sumador_completo_4bits is
    Port ( rst,clk : in  STD_LOGIC;
           cout : out  STD_LOGIC_VECTOR (3 downto 0));
end sumador_completo_4bits;

architecture funcional of sumador_completo_4bits is
	signal icout : unsigned(3 downto 0);
begin
	process(rst, clk)
	begin
		if (rst='1') then icout <= "0000";
		elsif (clk='1' and clk' event) then icout <= icout + 1;
		end if
	end process;
	
	cout <= std_logic_vector (icout);

end architecture;