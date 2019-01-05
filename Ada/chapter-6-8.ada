with Ada.Text_IO;
use Ada.Text_IO;

procedure Decimal is

   type DOLLAR is delta 0.01 digits 8 range 0.00..1_000.00;
   type DIMES  is delta 0.1  digits 6;
   Amount : DOLLAR := 3.00;
   Coins  : DIMES  := 1.20;

   package Dec_IO is new Ada.Text_IO.Decimal_IO(DOLLAR);
   use Dec_IO;
   package Dime_IO is new Ada.Text_IO.Decimal_IO(DIMES);
   use Dime_IO;

begin

   for Index in 1..8 loop
      Amount := Amount + 1.23;
      Put(Amount);
      Coins := Coins + 3.70;
      Put(Coins);
      New_Line;
   end loop;

end Decimal;

-- 4.23     4.9
-- 5.46     8.6
-- 6.69    12.3
-- 7.92    16.0
-- 9.15    19.7
-- 10.38    23.4
-- 11.61    27.1
-- 12.84    30.8
