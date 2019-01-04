with Ada.Text_IO;
use Ada.Text_IO;

procedure GoToDemo is

begin
   -- Go to label
   goto Some_Place;

<<There>>
   Put_Line("I am now at the There place.");
   goto Stop_This_Mess;

<<Where>>
   Put_Line("I am now at the Where place.");
   goto There;

<<Some_Place>>
   Put_Line("I am now Some_Place.");
   goto Where;

<<Stop_This_Mess>>
   Put_Line("I am now about to end this mess.");

end GoToDemo;




-- Result of execution

-- I am now Some_Place.
-- I am now at the Where place.
-- I am now at the There place.
-- I am now about to end this mess.
