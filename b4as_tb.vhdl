library ieee;
use ieee.std_logic_1164.all;

entity b4as_tb is
    end b4as_tb;

    architecture test of b4as_tb is 
    
component bit4addsub 
port ( 

a, b: in bit_vector(3 downto 0);   
    cin: in bit;
    s : out bit_vector(3 downto 0);
    cout: out bit;
    v:out bit;
    negation:in bit
);
end component;

signal a,b,s :bit_vector(3 downto 0);
signal cin,cout,v,neg:bit;

    begin 
    fas: bit4addsub port map(a,b,cin,s,cout,v,neg);


    process begin


a<="1111";
b<="1011";
cin<='1';
neg<='1';
wait for 1 ns;

a<="1111";
b<="1100";
cin<='1';
neg<='0';
wait for 1 ns;

a<="1111";
b<="1101";
cin<='0';
neg<='0';
wait for 1 ns;

a<="1111";
b<="1110";
cin<='1';
neg<='1';
wait for 1 ns;

a<="1111";
b<="1111";
cin<='0';
neg<='0';
wait for 1 ns;

assert false report "Reached end of test";
wait;
end process;


    end test ;