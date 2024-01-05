LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tb_sumador_completo_1bit IS
END tb_sumador_completo_1bit;
 
ARCHITECTURE funcional OF tb_sumador_completo_1bit IS 
	signal a,b,cin : STD_LOGIC;
   signal s,cout : STD_LOGIC;
 
    COMPONENT sumador_completo_1bit
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         cin : IN  std_logic;
         s : OUT  std_logic;
         cout : OUT  std_logic
        );
    END COMPONENT;
    
   constant medio_periodo : time := 500 ns;
 
BEGIN
 
	tb: sumador_completo_1bit 
	PORT MAP (a,b,cin,s,cout);

   -- Clock process definitions
   process_a :process
   begin
		a <= '0'; wait for medio_periodo;
		a <= '1'; wait for medio_periodo;
   end process;

  process_b :process
   begin
		b <= '0'; wait for 2.0 * medio_periodo;
		b <= '1'; wait for 2.0 * medio_periodo;
   end process;
	
	process_cin :process
   begin
		cin <= '0'; wait for 4.0 * medio_periodo;
		cin <= '1'; wait for 4.0 * medio_periodo;
   end process;
END ARCHITECTURE;