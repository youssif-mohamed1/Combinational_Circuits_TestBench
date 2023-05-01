library ieee;
use ieee.std_logic_1164.all;

entity bcd16bits_tb is
    end bcd16bits_tb;

    architecture test of bcd16bits_tb is
component bcd16bits
port(
    a,b:in bit_vector(15 downto 0);
    su:out bit_vector(15 downto 0);
    po:out bit;
    cin:in bit
    --cout:inout bit
);
    end component;
    
    signal a,b,su:bit_vector(15 downto 0);
    signal po,cin:bit;
        
    begin

        b16cdbits:bcd16bits port map(a,b,su,po,cin);
process begin

    a<="0001000100010001";
    b<="0001000100010001";
    cin<='0';
     wait for 5 ns; 
     
     a<="0011001100110011";
     b<="0001000100010001";
     cin<='0';
      wait for 5 ns; 

      a<="0101010101010101";
    b<="0101010101010101";
    cin<='0';
     wait for 5 ns; 

     a<="0111011101110111";
     b<="0111011101110111";
     cin<='0';
     wait for 5 ns; 

     a<="1000000100010110";
     b<="0110010000111001";
    cin<='0';
     wait for 5 ns; 
 
     a<="1000001001100111";
     b<="1001010101001001";
    cin<='0';
     wait for 5 ns; 



assert false report "Reached end of test";
wait;
end process;
        end test;