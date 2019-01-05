with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure AllInt is

   Data  : INTEGER;
   Form  : POSITIVE;
   Once  : NATURAL;

   type    MY_INTEGER is range -1000..24000;
   type    MY_SHORT   is range -12..127;
   subtype MY_SUBTYPE is MY_INTEGER range -12..127;

   Index : MY_INTEGER := 345;
   Stuff : MY_INTEGER := 33;
   Count : MY_SHORT := 54;

begin
   Put("The type MY_SHORT covers the range of");
   Data := INTEGER(MY_SHORT'FIRST);
   Put(Data);
   Put(" to");
   Data := INTEGER(MY_SHORT'LAST);
   Put(Data);
   New_Line;
   Put("and its base covers the range of");
   Data := INTEGER(MY_SHORT'BASE'FIRST);
   Put(Data);
   Put(" to");
   Data := INTEGER(MY_SHORT'BASE'LAST);
   Put(Data);
   New_Line(2);

   Put("The type MY_INTEGER covers the range of");
   Put(INTEGER(MY_INTEGER'FIRST));
   Put(" to");
   Put(INTEGER(MY_INTEGER'LAST));
   New_Line;
   Put("and its base covers the range of");
   Put(INTEGER(MY_INTEGER'BASE'FIRST));
   Put(" to");
   Put(INTEGER(MY_INTEGER'BASE'LAST));
   New_Line(2);

   if Index in MY_SUBTYPE then
      Put_Line("Index is in the range of MY_SUBTYPE");
   end if;

   if Index not in MY_SUBTYPE then
      Put_Line("Index is not in the range of MY_SUBTYPE");
   end if;

   if Index in 12..377 then
      Put_Line("Index is in the range of 12..377");
   end if;

   if Index not in Stuff..3 * (Stuff - 4) then
      Put_Line("Index is not in the range of Stuff..3 * (Stuff - 4)");
   end if;

end AllInt;

-- Result of execution
-- The type MY_SHORT covers the range of        -12 to        127
-- and its base covers the range of       -128 to        127
--
-- The type MY_INTEGER covers the range of      -1000 to      24000
-- and its base covers the range of     -32768 to      32767
--
-- Index is not in the range of MY_SUBTYPE
-- Index is in the range of 12..377
-- Index is not in the range of Stuff..3 * (Stuff - 4)
