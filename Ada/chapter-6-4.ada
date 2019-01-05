with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure IncrInt is
   Index : INTEGER;
begin
   Index := 13;
   Index := INTEGER'POS(Index);  
   Put(Index);
   Index := INTEGER'VAL(Index); 
   Put(Index);
   Index := INTEGER'SUCC(Index); -- Increase one        
   Put(Index);
   Index := INTEGER'PRED(Index); -- Decrease one        
   Put(Index);
   Index := Index + 1;      
   Put(Index);
end IncrInt;

-- 13
-- 13
-- 14
-- 13 
-- 14
