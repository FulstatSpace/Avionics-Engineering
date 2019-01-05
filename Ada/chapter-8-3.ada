with Ada.Text_IO;
use Ada.Text_IO;

procedure Calling is

   procedure One is
   begin
      Put("This is procedure One talking.");
      New_Line;
   end One;

   procedure Two is
   begin
      Put("This is procedure Two talking.");
      New_Line;
      One;
   end Two;

   procedure Three is
   begin
      Put("This is procedure Three stop.");
      New_Line;
      Two;
      One;
   end Three;

begin
   One;
   Two;
   Three;
end Calling;

-- This is procedure One talking.
-- This is procedure Two talking.
-- This is procedure One talking.
-- This is procedure Three stop.
-- This is procedure Two talking.
-- This is procedure One talking.
-- This is procedure One talking.
