library ieee;
use ieee.std_logic_1164.all;
entity bit8as_tb is
    end bit8as_tb;
    architecture test of bit8as_tb is
        component bit8as
        port (
            a,b:in bit_vector(7 downto 0);
            c:in bit;
            sum:out bit_vector(7 downto 0);
            coutter:out bit;
            neg :in bit
            );
        end component;
        signal a1,b1,sum1:bit_vector(7 downto 0);
        signal c1,coutter1,n:bit;
        begin
        bit8as11: bit8as port map(a1,b1,c1,sum1,coutter1,n);
        process begin  
            a1<="01011111";
            b1<="01001101";
            c1<='0';
            n<='0';
            a1<="01110011";
            b1<="01000101";
            c1<='0';
            n<='0';
             wait for 1 ns; 
             a1<="01110011";
             b1<="01000101";
              c1<='1';
             n<='1';
             wait for 1 ns;
             wait for 1 ns; 
             a1<="01011111";
             b1<="01001101";
             c1<='1';
             n<='1';
             wait for 1 ns; 
assert false report "Reached end of test";
wait;
            end process;
        end test;
