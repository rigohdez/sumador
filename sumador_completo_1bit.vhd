library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sumador_completo_1bit is
    Port ( a,b,cin : in  STD_LOGIC;
           s,cout : out  STD_LOGIC);
end sumador_completo_1bit;

architecture funcional of sumador_completo_1bit is
	signal n1, n2, n3 : std_logic;

	component medio_sumador is
	Port ( a, b : in STD_LOGIC;
           s, cout : out STD_LOGIC);
	end component;

begin
	suma1 : medio_sumador
	port map(a, b, n1, n2);

	suma2 : medio_sumador
	port map(n1, cin, s, n3);

	cout <= n2 or n3;

end funcional;

