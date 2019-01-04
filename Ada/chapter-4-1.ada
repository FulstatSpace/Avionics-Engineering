with Ada.Text_IO;
use Ada.Text_IO;

procedure Compare is

   package Enum_IO is new Ada.Text_IO.Enumeration_IO(BOOLEAN);
   use Enum_IO;

   One   : INTEGER := 1;
   Two   : INTEGER := 2;
   Three : INTEGER := 3;

   Is_It : BOOLEAN := TRUE;      -- initialized
   Which : BOOLEAN;              -- uninitialized

begin

   Which := TRUE;
   Put("Which now has the value of ");
   Put(Which);
   New_Line;
   Which := FALSE;
   Put("Which now has the value of ");
   Put(Which);
   New_Line;

   Is_It := (One + 1) = Two;
   Is_It := One /= Two;
   Is_It := One + Two >= Three;

end Compare;

-- Result of execution

-- Which now has the value of TRUE
-- Which now has the value of FALSE
