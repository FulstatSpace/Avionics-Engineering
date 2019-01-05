with Ada.Text_IO;
use Ada.Text_IO;

procedure Modular is

   type DIAL_RANGE is mod 5;
   Dial : DIAL_RANGE := 3;

   type MY_BINARY_BIT is mod 2;
   My_Bit : MY_BINARY_BIT := 1;

   type MY_UNSIGNED_SHORT_INT is mod 65536;
   type MY_UNSIGNED_BYTE      is mod 256;

   package Mod_IO is new Ada.Text_IO.Modular_IO(DIAL_RANGE);
   use Mod_IO;

   package Bit_IO is new Ada.Text_IO.Modular_IO(MY_BINARY_BIT);
   use Bit_IO;

begin

   for Index in 1..6 loop
      Dial := Dial + 1;
      Put("The value of Dial is ");
      Put(Dial);
      Put(", and the binary bit is ");
      Put(My_Bit);
      My_Bit := My_Bit + 1;
      My_Bit := My_Bit + 2;   -- Error, 2 is too big to add to My_Bit
      New_Line;
   end loop;

   New_Line;

   for Index in 1..6 loop
      Dial := Dial - 1;
      Put("The value of Dial is ");
      Put(Dial);
      Put(", and the binary bit is ");
      Put(My_Bit);
      My_Bit := My_Bit - 1;
      New_Line;
   end loop;

end Modular;
