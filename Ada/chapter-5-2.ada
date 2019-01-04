with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure MoreLoop is

   type MY_TYPE is range 10..13;
   package My_Int_IO is new Ada.Text_IO.Integer_IO(MY_TYPE);
   use My_Int_IO;

   My_Range      : MY_TYPE;
   TWO           : constant INTEGER := 2;
   THREE         : constant INTEGER := 3;
   FOUR          : constant INTEGER := 4;
   Height,Width  : INTEGER;
   Special_Index : INTEGER;

begin

   for Index in MY_TYPE loop
      Put("Going through the first loop");
      Put(Index, 3);
      New_Line;
   end loop;

   for Index in MY_TYPE'FIRST..MY_TYPE'LAST loop
      Put("Going through the second loop");
      Put(Index, 3);
      New_Line;
   end loop;

   for Index in TWO..THREE**2 - FOUR loop    -- 3^2 - 4 = 5 => 2..5
      Put("Going through the third loop");
      Put(Index, 3);
      New_Line;
   end loop;

Named_Loop:
   for Height in TWO..FOUR loop
      for Width in THREE..5 loop
         if Height * Width = 12 then
            exit Named_Loop;
         end if;
         Put("Now we are in the nested loop and area is");
         Put(Height*Width, 5);
         New_Line;
      end loop;
   end loop Named_Loop;

   Special_Index := 157;
   for Special_Index in 3..6 loop
      Put("In the Special Index loop");
      Put(Special_Index, 5);
      New_Line;
   end loop;
   Put("The Special Index loop is completed");
   Put(Special_Index, 5);
   New_Line;

end MoreLoop;




-- Result of execution

-- Going through the first loop 10
-- Going through the first loop 11
-- Going through the first loop 12
-- Going through the first loop 13
-- Going through the second loop 10
-- Going through the second loop 11
-- Going through the second loop 12
-- Going through the second loop 13
-- Going through the third loop  2
-- Going through the third loop  3
-- Going through the third loop  4
-- Going through the third loop  5
-- Now we are in the nested loop and area is    6
-- Now we are in the nested loop and area is    8
-- Now we are in the nested loop and area is   10
-- Now we are in the nested loop and area is    9
-- In the Special Index loop    3
-- In the Special Index loop    4
-- In the Special Index loop    5
-- In the Special Index loop    6
-- The Special Index loop is completed  157
