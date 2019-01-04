with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure CaseDemo is

begin
   for How_Many in 4..13 loop
      Put("We now have ");
      Put(How_Many, 3);
      Put(" widgets, ");
      case How_Many is
         when 4..6    => Put("which is too few.");
         when 7|9     => Put("but we don't need 7 or 9.");
         when 13      => Put("but that is too many.");
         when 8|10|12 => Put("which is a large even number.");
         when 11      => Put("enough for a football team.");
      end case;
      New_Line;
   end loop;
   New_Line;

   for How_Many in 100..105 loop
      Put("It is now ");
      Put(How_Many, 3);
      Put(" ");
      case How_Many is
         when 100 => Put("The value is 100, and useless.");
         when 101 => for Index in 2..5 loop
                        Put("Puppy ");
                     end loop;
         when 103 => if TRUE then
                        Put("Of course TRUE will always be true.");
                     end if;
         when 105 => null;
         when others => Put("This is one of those not defined.");
      end case;
      New_Line;
   end loop;
end CaseDemo;




-- Result of execution

-- We now have   4 widgets, which is too few.
-- We now have   5 widgets, which is too few.
-- We now have   6 widgets, which is too few.
-- We now have   7 widgets, but we don't need 7 or 9.
-- We now have   8 widgets, which is a large even number.
-- We now have   9 widgets, but we don't need 7 or 9.
-- We now have  10 widgets, which is a large even number.
-- We now have  11 widgets, enough for a football team.
-- We now have  12 widgets, which is a large even number.
-- We now have  13 widgets, but that is too many.
--
-- It is now 100 The value is 100, and useless.
-- It is now 101 Puppy Puppy Puppy Puppy
-- It is now 102 This is one of those not defined.
-- It is now 103 Of course TRUE will always be true.
-- It is now 104 This is one of those not defined.
-- It is now 105
