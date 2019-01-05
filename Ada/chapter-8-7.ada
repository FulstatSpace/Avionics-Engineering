with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure OddSqre is
   Result : INTEGER;
   
   function Square_The_Number(Number_To_Square : in INTEGER) return INTEGER is
   begin
      return Number_To_Square * Number_To_Square;
   end Square_The_Number;

   procedure Square_And_Keep_Sign(Input_Value  : in INTEGER;
                                  Funny_Result : out INTEGER) is

        procedure Do_A_Negative_Number(InVal  : in INTEGER;
                                       OutVal : out INTEGER) is
        begin
           OutVal := -Square_The_Number(InVal);
        end Do_A_Negative_Number;
   begin
      if Input_Value < 0 then
         Do_A_Negative_Number(Input_Value, Funny_Result);
         return;
      elsif Input_Value = 0 then
         Funny_Result := 0;
         return;
      else
         Funny_Result := Square_The_Number(Input_Value);
         return;
      end if;
   end Square_And_Keep_Sign;
begin
   for Index in -3..4 loop
      Square_And_Keep_Sign(Index, Result);
      Put("The Odd Square of");
      Put(Index, 3);
      Put(" is");
      Put(Result, 5);
      New_Line;
   end loop;
end OddSqre;

-- The Odd Square of -3 is   -9
-- The Odd Square of -2 is   -4
-- The Odd Square of -1 is   -1
-- The Odd Square of  0 is    0
-- The Odd Square of  1 is    1
-- The Odd Square of  2 is    4
-- The Odd Square of  3 is    9
-- The Odd Square of  4 is   16


