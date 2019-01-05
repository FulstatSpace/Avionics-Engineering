with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure MixTypes is

   PI : constant := 3.1416;
   TWO_PI : constant := 2 * PI;

   type MY_FLOAT is digits 7;
   Size : MY_FLOAT;

   type MY_FIXED is delta 0.1 range -40.0..120.0;
   Temperature : MY_FIXED;

   Index : INTEGER;

begin
   Size := TWO_PI;
   Temperature := 2 * TWO_PI;
   Temperature := 3 * Temperature;
   Temperature := MY_FIXED(12.0 * TWO_PI);

   Size := MY_FLOAT(Temperature) + PI;
   Size := MY_FLOAT(Temperature + PI);

   Index := INTEGER(Size + MY_FLOAT(Temperature) + PI);
   Index := INTEGER(Size) + INTEGER(Temperature) + INTEGER(PI);
   Index := INTEGER(Size + PI) + INTEGER(Temperature);
   Put(Index);
end MixTypes;
