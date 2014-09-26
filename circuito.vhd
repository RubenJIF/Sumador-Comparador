library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity circuito is
	port(
		a : in std_logic_vector(10 downto 0);
		b : in std_logic_vector(10 downto 0);
		cin : in std_logic;
		x2 : in std_logic_vector(10 downto 0);
		cout : out std_logic;
		t1 : out std_logic;
		t2 : out std_logic;
		t3 : out std_logic
	);
end circuito;

architecture behave of circuito is
	signal x1 : std_logic_vector(10 downto 0);
	signal suma: std_logic_vector(11 downto 0);
	signal a1 : std_logic_vector(11 downto 0);
	signal b1 : std_logic_vector(11 downto 0);
	begin
		a1 <= '0' & a;
		b1 <= '0' & b;
		suma <= (a1 + b1) + cin;
		x1 <= suma(10 downto 0);
		cout <= suma(11);
	process(x2, x1)
	begin
	-- t1 : activo en 1
	-- t2 : actuvo en 1
	-- t3 : activo en 1
		if( x1 > x2 ) then
			t1 <= '1';
			t2 <= '0';
			t3 <= '0';
		elsif( x1 < x2) then
			t1 <= '0';
			t2 <= '1';
			t3 <= '0';
		else
			t1 <= '0';
			t2 <= '0';
			t3 <= '1';
		end if;
	end process;
end behave;

