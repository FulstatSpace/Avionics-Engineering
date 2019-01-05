with Ada.Text_IO;
use Ada.Text_IO;

procedure FloatVar is

   PI     : constant := 3.1416;
   TWO_PI : constant := 2 * PI;

   R : FLOAT;

   type MY_FLOAT is digits 7;
   type MY_LONG_FLOAT is digits 15;

   Area   : MY_FLOAT := 2.345_12e4;     -- This is 23451.2
   Length : MY_FLOAT := 25.123;
   Factor : MY_FLOAT := 8.89;
   Cover  : MY_LONG_FLOAT;
   What   : BOOLEAN;
   Index  : INTEGER := 4;

   package Int_IO is new Ada.Text_IO.Integer_IO(INTEGER);
   use Int_IO;
   package Flt_IO is new Ada.Text_IO.Float_IO(MY_FLOAT);
   use Flt_IO;

begin
   -- Arithmetic float operations
   Area := Length + Factor + 12.56;
   Area := Length - Factor - 12.56;
   Area := Length * Factor * 2#111.0#;   -- this is decimal 7.0
   Area := Length / Factor;
   Area := Length ** 3;
   Area := Length ** (-3);
   Area := Length ** Index;

   -- Arithmetic logical compares
   What := Length =  Factor;
   What := Length /= Factor;
   What := Length >  Factor;
   What := Length >= Factor;
   What := Length <  Factor;
   What := Length <= Factor;

   Area := 0.0031 + (0.027_3 * TWO_PI) / (Length ** (-Index/2));
   Cover := 27.3 * TWO_PI * MY_LONG_FLOAT(Area);

   Put("Area is now ");
   Put(Area);
   Put(Area,5);
   New_Line;

   Put("Area is now ");
   Put(Area,5,5);
   Put(Area,5,5,0);
   New_Line;

   Put("MY_FLOAT'DIGITS =      ");
   Put(MY_FLOAT'DIGITS);
   New_Line;
   Put("MY_FLOAT'BASE'FIRST =  ");
   Put(MY_FLOAT'BASE'FIRST);
   New_Line;
   Put("MY_FLOAT'BASE'LAST =   ");
   Put(MY_FLOAT'BASE'LAST);
   New_Line;

end FloatVar;

-- Result of execution

-- Area is now  1.082677E+02    1.082677E+02
-- Area is now     1.08268E+02  108.26771
-- MY_FLOAT'DIGITS =                7
-- MY_FLOAT'BASE'FIRST =  -1.797693E+308
-- MY_FLOAT'BASE'LAST =    1.797693E+308
