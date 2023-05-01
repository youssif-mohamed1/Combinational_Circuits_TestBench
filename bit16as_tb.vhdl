library ieee;
use ieee.std_logic_1164.all;

entity bit16as_tb is
    end bit16as_tb;

    architecture test of bit16as_tb is
    component bit16as 
    port(
        a,b:in bit_vector(15 downto 0);
        cin:in bit;
        sum:out bit_vector(15 downto 0);
        cout:out bit;
        negative:in bit
        );
    end component;

signal a1,b1,sum1:bit_vector(15 downto 0);
signal cin,cout,n:bit;

        begin

bit16as1:bit16as port map(a1,b1,cin,sum1,cout,n);
process begin

a1<="0000001111010100";
b1<="0000000000011010";
cin<='0';
n<='0';
wait for 1 ns;

a1<="0000001111010100";
b1<="0000000000011010";
cin<='1';
n<='1';
wait for 1 ns;

a1<="0111001111010100";
b1<="0000110000011010";
cin<='0';
n<='0';
wait for 1 ns;

a1<="0101101111010100";
b1<="0000000010111010";
cin<='1';
n<='1';
wait for 1 ns;

    assert false report "Reached end of the test";
    wait;
end process;
        end test;