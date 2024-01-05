library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity medio_sumador is
    Port ( a,b : in  STD_LOGIC;
           s,cout : out  STD_LOGIC);
end medio_sumador;

architecture funcional of medio_sumador is

begin
    s <= a xor b;
    cout <= a and b;

end funcional;

