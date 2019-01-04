with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure DumbConv is

   X, Y : INTEGER;

begin
   Put("Centigrade to Farenheight temperature table");
   New_Line(2);
   for Count in INTEGER range -2..12 loop
      X := 10 * Count;
      Y := 32 + X * 9 / 5;
      Put("C =");
      Put(X, 5);
      Put("    F =");
      Put(Y, 5);
      if X = 0 then
         Put("  Freezing point of water");
      end if;
      if X = 100 then
         Put("  Boiling point of water");
      end if;
      New_Line;
   end loop;
end;


-- Result of execution

-- Centigrade to Farenheit temperature table
--
-- C =  -20    F =   -4
-- C =  -10    F =   14
-- C =    0    F =   32  Freezing point of water
-- C =   10    F =   50
-- C =   20    F =   68
-- C =   30    F =   86
-- C =   40    F =  104
-- C =   50    F =  122
-- C =   60    F =  140
-- C =   70    F =  158
-- C =   80    F =  176
-- C =   90    F =  194
-- C =  100    F =  212  Boiling point of water
-- C =  110    F =  230
-- C =  120    F =  248
