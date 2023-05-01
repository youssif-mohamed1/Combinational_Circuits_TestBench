library ieee;
use ieee.std_logic_1164.all;

entity bcd8bits_tb is
    end bcd8bits_tb;

    architecture test of bcd8bits_tb is

component bcd8bits
        port(

        a,b:in bit_vector(7 downto 0);
        s:out bit_vector(7 downto 0);
        plus:inout bit;
        cin:in bit;
        cout:inout bit
        );
    end component;

    signal a,b,s:bit_vector(7 downto 0);
    signal cin,cout,pl:bit;

    begin
    b8bit: bcd8bits port map(a,b,s,pl,cin,cout);
    process begin 

    a<="01100110";
    b<="10011001";
    cin<='0';
    wait for 1 ns;

    a<="01100110";
    b<="00110011";
    cin<='0';
    wait for 1 ns;

    a<="01100110";
    b<="01100110";
    cin<='0';
    wait for 1 ns;

    a<="01110111";
    b<="10011001";
    cin<='0';
    wait for 1 ns;

    a<="01010101";
    b<="01010101";
    cin<='0';
    wait for 1 ns;

    a<="01110111";
    b<="01110111";
    cin<='0';
    wait for 1 ns;

assert false report "Reached end of test";
wait;
    end process;
        end test;