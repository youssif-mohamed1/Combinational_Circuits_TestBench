library ieee;
use ieee.std_logic_1164.all;
entity bit4_tb is
    end bit4_tb;
    architecture test of bit4_tb is 

    component bit4addar
	port ( 
        a, b: in bit_vector(3 downto 0); 
			cin: in bit;
			s : out bit_vector(3 downto 0);
            cout: out bit;
            v:out bit
        );
    end component;

signal a,b,s :bit_vector(3 downto 0);
signal cin,cout,v:bit;

    begin
        fa:bit4addar port map(a=>a,b=>b,cin=>cin,s=>s,cout=>cout,v=>v);

        process begin
            a<="0000";
            b<="0000";
            cin<='0';
            wait for 1 ns;

            a<="0001";
            b<="0001";
            cin<='0';
            wait for 1 ns;

            a<="0010";
            b<="0010";
            cin<='0';
            wait for 1 ns;

            a<="0011";
            b<="0011";
            cin<='0';
            wait for 1 ns;
        
            a<="0100";
            b<="0100";
            cin<='0';
            wait for 1 ns;

            a<="0101";
            b<="0101";
            cin<='0';
            wait for 1 ns;

            a<="0110";
            b<="0110";
            cin<='0';
            wait for 1 ns;

            a<="0111";
            b<="0111";
            cin<='0';
            wait for 1 ns;

            a<="1000";
            b<="1000";
            cin<='0';
            wait for 1 ns;

            a<="1001";
            b<="1001";
            cin<='0';
            wait for 1 ns;

            a<="1010";
            b<="1010";
            cin<='0';
            wait for 1 ns;

            a<="1011";
            b<="1011";
            cin<='0';
            wait for 1 ns;

            a<="1100";
            b<="1100";
            cin<='0';
            wait for 1 ns;
            

            a<="1101";
            b<="1101";
            cin<='0';
            wait for 1 ns;

            a<="1110";
            b<="1110";
            cin<='0';
            wait for 1 ns;

            a<="1111";
            b<="1111";
            cin<='0';
             wait for 1 ns; 
             
assert false report "Reached end of test";
wait;
end process;
        end test;