with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure DerTypes is

   type LITTLE_INT is range -24..17;
   type TINY_INT   is range -3..2;
   type POS_INT    is range 25..38;
   type TINY_POS   is new POS_INT range 25..30;
   type SALAD_INT  is new INTEGER;
   type ANIMAL_INT is new INTEGER;
   type TREE_INT   is new INTEGER range -557..1098;

   Salad    : SALAD_INT;
   Lettuce  : SALAD_INT := 22;
   Tomatoes : SALAD_INT := 14;
   Animals  : ANIMAL_INT;
   Dogs     : ANIMAL_INT := 3;
   Cats     : ANIMAL_INT := 4;
   Trees    : TREE_INT;
   Oak      : TREE_INT := 12;
   Coconut  : TREE_INT := 8;
   Count    : INTEGER;

begin

   Salad := Lettuce + Tomatoes;
   Animals := Dogs + Cats;
   Trees := Oak + Coconut + TREE_INT(Animals);
   Count := INTEGER(Trees) + INTEGER(Salad);

   Salad := SALAD_INT(Dogs) * Tomatoes +
            SALAD_INT(Cats) * SALAD_INT(Oak) +
            SALAD_INT(Count);
   Put("The 1st Salad calculation is ");
   Put(INTEGER(Salad));
   New_Line;

   Salad := SALAD_INT(Dogs * ANIMAL_INT(Tomatoes) +
                      Cats * ANIMAL_INT(Oak) +
                             ANIMAL_INT(Count));
   Put("The 2nd Salad calculation is ");
   Put(INTEGER(Salad));
   New_Line;

end DerTypes;

-- Result of execution

-- The 1st Salad calculation is         153
-- The 2nd Salad calculation is         153
