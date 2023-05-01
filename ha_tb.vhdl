library ieee;
use IEEE.STD_LOGIC_1164.all;
entity ha_tb is
    end ha_tb;
    architecture arch of ha_tb is
    component halfaddar
    port(
        a:in std_ulogic;
        b:in std_ulogic;
        s:out std_ulogic;
        c:out std_ulogic
    );
    end component;

    signal a,b,s,c:std_ulogic; 
begin
    ha: halfaddar port map(a=>a,b=>b,s=>s,c=>c);

    process begin

         a<='X';
         b<='X';
         wait for 1 ns;
         
         a<='0';
         b<='0';
         wait for 1 ns;

         a<='0';
         b<='1';
         wait for 1 ns;

         a<='1';
         b<='0';
         wait for 1 ns;

         a<='1';
         b<='1';
         wait for 1 ns;

assert false report "Reached end of test";
wait;

    end process;
    end arch ;