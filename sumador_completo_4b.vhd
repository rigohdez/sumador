library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sumador_completo_4b is
    Port ( a,b : in  STD_LOGIC_VECTOR(3 DOWNTO 0);
           s : out  STD_LOGIC_VECTOR(3 DOWNTO 0);
           cout : out  STD_LOGIC);
end sumador_completo_4b;

architecture funcional of sumador_completo_4b is
	signal n1, n2, n3 : std_logic;

	component sumador_completo_1bit is
		Port ( a,b,cin : in  STD_LOGIC;
           s,cout : out  STD_LOGIC);
	end component;
	component medio_sumador is
		Port ( a,b : in  STD_LOGIC;
           s,cout : out  STD_LOGIC);
	end component;

begin
	suma1 : medio_sumador
	port map (a(0), b(0), s(0), n1 );
	
	suma2 : sumador_completo_1bit
	port map (a(1), b(1), n1, s(1), n2 );
	
	suma3 : sumador_completo_1bit
	port map (a(2), b(2), n2, s(2), n3 );
	
	suma4 : sumador_completo_1bit
	port map (a(3), b(3), n3, s(3), cout );

end funcional;