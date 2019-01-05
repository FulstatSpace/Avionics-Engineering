with Ada.Text_IO;
use Ada.Text_IO;

procedure Ch06_1 is

package Long_IO is new Ada.Text_IO.Integer_IO(LONG_INTEGER);
use Long_IO;
package Short_IO is new Ada.Text_IO.Integer_IO(SHORT_INTEGER);
use Short_IO;

Long_Variable  : LONG_INTEGER;
Short_Variable : SHORT_INTEGER;

begin
   Put_Line("For LONG_INTEGER,");
   Put(LONG_INTEGER'FIRST);
   Put_Line(" is the minimum value");
   Put(LONG_INTEGER'LAST);
   Put_Line(" is the maximum value");

   Put_Line("For SHORT_INTEGER,");
   Put(SHORT_INTEGER'FIRST);
   Put_Line(" is the minimum value");
   Put(SHORT_INTEGER'LAST);
   Put_Line(" is the maximum value");
end Ch06_1;

-- For LONG_INTEGER,
-- -9223372036854775808 is the minimum value
-- 9223372036854775807 is the maximum value
-- For SHORT_INTEGER,
-- -32768 is the minimum value
-- 32767 is the maximum value
