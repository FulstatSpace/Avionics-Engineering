with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure DerSubs is

   type NEW_INT      is new INTEGER range 12..127;
   type NEW_INT_TYPE is new INTEGER;

   subtype SUB_INT     is NEW_INT;
   subtype NEW_SUBTYPE is NEW_INT range 12..127;
   type    DER_SUB     is new NEW_SUBTYPE range 12..32;

   Arrow, Dart : NEW_INT;
   Size        : NEW_INT_TYPE;
   Thing       : INTEGER := 15;
   Point       : NEW_SUBTYPE;

begin
   Size := 10;
   Arrow := 23;
   Dart := 2 * Arrow - 25;
   Dart := Arrow + 2 * (NEW_INT(Size + 2) + NEW_INT(Thing));
   Dart := Arrow + 2 * NEW_INT(Size + NEW_INT_TYPE(Thing));
   Point := Arrow + Dart;
end DerSubs;
