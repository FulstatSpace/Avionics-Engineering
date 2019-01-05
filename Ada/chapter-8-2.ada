with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure Proced3 is

   Dogs, Cats, Animals : INTEGER;

   procedure Number_Of_Animals(Variety1 : in  INTEGER;
                               Variety2 : in  INTEGER;
                               Total    : out INTEGER);

   procedure Number_Of_Animals(Variety1 : in INTEGER;
                               Variety2 : in INTEGER;
                               Total    : out INTEGER) is
   begin
      Total := Variety1 + Variety2;
   end Number_Of_Animals;

begin
   Dogs := 113;
   Cats := 114;
   Number_Of_Animals(Dogs, Cats, Animals);
   Put("The total number of animals is ");
   Put(Animals, 3);
   New_Line;
end Proced3;

-- The total number of animals is 227
