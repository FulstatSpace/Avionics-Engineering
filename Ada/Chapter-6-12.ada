with Ada.Text_IO;
use Ada.Text_IO;

procedure Ch06_3 is

type MY_ENUM is (YES, NO, MAYBE, WHY, POSSIBLY);

package Enum_IO is new Ada.Text_IO.Enumeration_IO(MY_ENUM);
use Enum_IO;

-- Answer : MY_ENUM := YES; Error
Answer : MY_ENUM := WHY;

begin
   Answer := MY_ENUM'PRED(Answer);
   Put(Answer);
end Ch06_3;

-- MAYBE
