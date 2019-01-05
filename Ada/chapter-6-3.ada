with Ada.Text_IO;
use Ada.Text_IO;

procedure BoolVars is
   package Bool_IO is new Ada.Text_IO.Enumeration_IO(BOOLEAN);
   use Bool_IO;

   Correct  : BOOLEAN;
   Maybe    : BOOLEAN;
   Probably : BOOLEAN;
begin
   Correct := TRUE;                        -- TRUE
   Maybe := FALSE;                         -- FALSE
   Probably := Correct or Maybe;           -- TRUE
   Probably := Correct and Maybe;          -- FALSE
   Probably := Correct xor Maybe;          -- TRUE
   Probably := Correct and not Maybe;      -- TRUE
   Probably := BOOLEAN'FIRST;              -- FALSE
   Probably := BOOLEAN'LAST;               -- TRUE
   if Maybe < Correct then
      Put("FALSE is of less value than TRUE in a BOOLEAN variable");
      New_Line;
   end if;

   Put(Correct, 8);
   Put(Maybe, 8);
   New_Line;
end BoolVars;
