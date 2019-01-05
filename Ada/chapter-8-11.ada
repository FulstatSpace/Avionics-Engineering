with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure chapter8_exercise is

   Int_Dat : INTEGER;
   Flt_Dat : FLOAT;

   function Raise_To_Power(Index : INTEGER) return INTEGER is
   begin
      Put_Line("In the INTEGER function.");
      return Index * Index;
   end Raise_To_Power;

   function Raise_To_Power(Value : FLOAT) return FLOAT is
   begin
      Put_Line("In the FLOAT function.");
      return Value * Value * Value;
   end Raise_To_Power;

   function Raise_To_Power(Value : INTEGER) return FLOAT is
   begin
      Put_Line("In the new function.");
      return FLOAT(Value * Value * Value);
   end Raise_To_Power;

   procedure Raise_To_Power(Index  : in  INTEGER;
                            Result : out INTEGER) is
   begin
      Put_Line("In the INTEGER procedure.");
      Result := Index * Index * Index;
   end Raise_To_Power;

   procedure Raise_To_Power(Value  : in  FLOAT;
                            Result : out FLOAT) is
   begin
      Put_Line("In the FLOAT procedure.");
      Result := Value * Value;
   end Raise_To_Power;

begin
   Int_Dat := Raise_To_Power(2);     
   Flt_Dat := Raise_To_Power(3);     
   Raise_To_Power(3,Int_Dat);     
   Raise_To_Power(2.73,Flt_Dat);   
   Int_Dat := 2;
   Raise_To_Power(Raise_To_Power(Int_Dat),Int_Dat);
   Put("The result is ");
   Put(Int_Dat);
   New_Line;
end chapter8_exercise;

-- In the INTEGER function.
-- In the new function.
-- In the INTEGER procedure.
-- In the FLOAT procedure.
-- In the INTEGER function.
-- In the INTEGER procedure.
-- The result is 64
