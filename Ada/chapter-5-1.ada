with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure LoopDemo is

   Index, Count : INTEGER;

begin
   Index := 1;
   loop                            
      Put("Index =");
      Put(Index, 5); New_Line;
      Index := Index + 1;
      exit when Index = 5;
   end loop;

   Index := 1;
   loop                            
      Put("Index =");
      Put(Index, 5); New_Line;
      Index := Index + 1;
      if Index = 5 then exit; end if;
   end loop;

   Count := 1;
   while Count < 5 loop            
      Put("Count =");
      Put(Count, 5); New_Line;
      Count := Count + 1;
   end loop;

   for Index in 1..4 loop         
      Put("Doubled index =");
      Put(2 * Index, 5); New_Line;
   end loop;

   for Count in reverse 5..8 loop  
      Put("Triple count =");
      Put(3 * Count, 5); New_Line;
   end loop;

   for Index in 7..11 loop        
   end loop;

end LoopDemo;


-- Result of execution

-- Index =    1
-- Index =    2
-- Index =    3
-- Index =    4
-- Index =    1
-- Index =    2
-- Index =    3
-- Index =    4
-- Count =    1
-- Count =    2
-- Count =    3
-- Count =    4
-- Doubled index =    2
-- Doubled index =    4
-- Doubled index =    6
-- Doubled index =    8
-- Triple count =   24
-- Triple count =   21
-- Triple count =   18
-- Triple count =   15
