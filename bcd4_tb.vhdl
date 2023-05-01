library ieee;
use ieee.std_logic_1164.all;

entity bcd4_tb is
    end bcd4_tb;

    architecture test of bcd4_tb is

component bcd4bits 
    port(
    a:in bit_vector(3 downto 0);
    b:in bit_vector(3 downto 0);
    cin:in bit;
    sum : out bit_vector(3 downto 0);
    plus6:inout bit;
    carryout: out bit
    );
    end component;

    signal a,b,sum: bit_vector(3 downto 0);
    signal cin,carryout:bit;

        begin

    b4cd: bcd4bits port map(a,b,cin,sum,carryout);

    process begin

        a<="0001";
        b<="0011";
        cin<='0';
        wait for 1 ns;

        a<="1010";
        b<="0010";
        cin<='0';
        wait for 1 ns;

        a<="1001";
        b<="0111";
        cin<='0';
        wait for 1 ns;

        a<="1001";
        b<="0110";
        cin<='0';
        wait for 1 ns;

assert false report "Reached end of test";
wait;
        end process;
            end test;