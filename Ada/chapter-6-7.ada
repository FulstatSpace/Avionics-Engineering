with Ada.Text_IO;
use Ada.Text_IO;

procedure Fixed is

   COARSE_PI : constant := 3.15;
   -- type MY_FIXED is delta 1*10^-n  range -40.0..120.0;
   -- n digit after the decimal point
   -- 
   type MY_FIXED is delta 0.1  range -40.0..120.0;
   type ANGLE    is delta 0.05 range -COARSE_PI..COARSE_PI;

   Theta, Omega, Phi : ANGLE := 0.50;
   Funny_Value : MY_FIXED;

   package Int_IO is new Ada.Text_IO.Integer_IO(INTEGER);
   use Int_IO;
   package Fix_IO is new Ada.Text_IO.Fixed_IO(MY_FIXED);
   use Fix_IO;
   package Fix2_IO is new Ada.Text_IO.Fixed_IO(ANGLE);
   use Fix2_IO;
   package Flt_IO is new Ada.Text_IO.Float_IO(FLOAT);
   use Flt_IO;

begin

   Put("Theta starts off with the value");
   Put(Theta, 5, 2, 0);
   New_Line(2);

   Theta := Omega + Phi;
   Theta := Omega - Phi;
   Theta := 5 * Omega - 2 * Phi;
   Theta := ANGLE(Omega * Phi);
   Theta := ANGLE(3 * Omega / Phi);
   Theta := abs(Omega - 3 * Phi);

   Funny_Value := 5.1;
   for Index in 1..10 loop
      Put("Funny_Value is now");
      --Put(value, space, number_of_digit_after_the_decimal_point)
      Put(Funny_Value, 5, 1, 0); 
      -- Put(Funny_Value, 5, 1);
      Put(Funny_Value, 5, 3, 0);
      -- Put(Funny_Value, 5, 5);
      Funny_Value := MY_FIXED(Funny_Value * MY_FIXED(1.1));
      New_Line;
   end loop;
   New_Line;
   Put("MY_FIXED'DELTA = ");
   Put(MY_FIXED(MY_FIXED'DELTA));
   New_Line;
   Put("MY_FIXED'FIRST = ");
   Put(MY_FIXED'FIRST);
   New_Line;
   Put("MY_FIXED'LAST =  ");
   Put(MY_FIXED'LAST);
   New_Line;

end Fixed;

-- Result of execution
-- Theta starts off with the value    0.50
-- Funny_Value is now    5.1    5.10156
-- Funny_Value is now    5.6    5.61719
-- Funny_Value is now    6.2    6.18750
-- Funny_Value is now    6.8    6.81250
-- Funny_Value is now    7.5    7.50391
-- Funny_Value is now    8.3    8.26562
-- Funny_Value is now    9.1    9.10156
-- Funny_Value is now   10.0   10.02344
-- Funny_Value is now   11.0   11.03906
-- Funny_Value is now   12.2   12.16016
-- MY_FIXED'DELTA =    0.1
-- MY_FIXED'FIRST =  -40.0
-- MY_FIXED'LAST  =  120.0
