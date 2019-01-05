with Ada.Text_IO;
use Ada.Text_IO;

procedure Ch06_2 is

package Long_IO is new Ada.Text_IO.Float_IO(LONG_FLOAT);
use Long_IO;

package Short_IO is new Ada.Text_IO.Float_IO(SHORT_FLOAT);
use Short_IO;

Long_Variable  : LONG_FLOAT;
Short_Variable : SHORT_FLOAT;

begin
   Put_Line("For LONG_FLOAT,");
   Put(LONG_FLOAT'FIRST);
   Put_Line(" is the minimum value");
   Put(LONG_FLOAT'LAST);
   Put_Line(" is the maximum value");

   Put_Line("For SHORT_FLOAT,");
   Put(SHORT_FLOAT'FIRST);
   Put_Line(" is the minimum value");
   Put(SHORT_FLOAT'LAST);
   Put_Line(" is the maximum value");
end Ch06_2;

-- or LONG_FLOAT,
-- -1.79769313486232E+308 is the minimum value
-- 1.79769313486232E+308 is the maximum value
-- For SHORT_FLOAT,
-- -3.40282E+38 is the minimum value
-- 3.40282E+38 is the maximum value
