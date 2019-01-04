with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure MoreInts is

   Index_1                   : INTEGER;
   Index_2, Index_3, Index_4 : INTEGER;
   Cat                       : INTEGER := 12;
   Dog                       : INTEGER := -5;
   Pig, Hog, Sow             : INTEGER := 1000;

begin
   Index_1 := Cat + 4;                
   Index_2 := Dog - 3;                
   Index_3 := Pig * 7;               
   Index_4 := Pig / 300;             
   Put("Index_1 = "); Put(Index_1); New_Line;
   Put("Index_2 = "); Put(Index_2); New_Line;
   Put("Index_3 = "); Put(Index_3); New_Line;
   Put("Index_4 = "); Put(Index_4); New_Line(2);

   Index_1 := 5 * Cat - Pig / 4 ;     
   Index_2 := (5 * Cat) - (Pig / 4); 
   Index_3 := Pig mod 3;            
   Index_4 := Pig rem 3;              
   Put("Index_1 = "); Put(Index_1); New_Line;
   Put("Index_2 = "); Put(Index_2); New_Line;
   Put("Index_3 = "); Put(Index_3); New_Line;
   Put("Index_4 = "); Put(Index_4); New_Line(2);

   Index_1 := abs(Dog);               
   Index_2 := Cat**3;                 
   Index_3 := (Cat-5)**(abs(Dog)-2); 
   Index_4 := -Index_3;               
   Put("Index_1 = "); Put(Index_1); New_Line;
   Put("Index_2 = "); Put(Index_2); New_Line;
   Put("Index_3 = "); Put(Index_3); New_Line;
   Put("Index_4 = "); Put(Index_4); New_Line(2);
end MoreInts;




-- Result of execution

-- Index_1 =          16
-- Index_2 =          -8
-- Index_3 =        7000
-- Index_4 =           3
--
-- Index_1 =        -190
-- Index_2 =        -190
-- Index_3 =           1
-- Index_4 =           1
--
-- Index_1 =           5
-- Index_2 =        1728
-- Index_3 =         343
-- Index_4 =        -343
