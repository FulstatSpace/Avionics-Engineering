with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure Proced2 is

   Counter : INTEGER;

   procedure Write_A_Header is
   begin
      Counter := 1;
      Put("This is the heading for this little program.");
      New_Line(2);
   end Write_A_Header;

   procedure Write_And_Increment is
   begin
      Put("This is line number");
      Put(Counter, 2);
      Put_Line(" of this program.");
      Counter := Counter + 1;
   end Write_And_Increment;

   procedure Write_An_Ending_Statement is
   begin
      New_Line;
      Put_Line("This is the end of this little program.");
   end Write_An_Ending_Statement;

begin
   Write_A_Header;
   for Index in 1..7 loop
      Write_And_Increment;
   end loop;
   Write_An_Ending_Statement;
end Proced2;

-- This is the heading for this little program.
--
-- This is line number 1 of this program.
-- This is line number 2 of this program.
-- This is line number 3 of this program.
-- This is line number 4 of this program.
-- This is line number 5 of this program.
-- This is line number 6 of this program.
-- This is line number 7 of this program.
--
-- This is the end of this little program.
