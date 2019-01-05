with Ada.Text_IO, Ada.Float_Text_IO; 
use Ada.Text_IO, Ada.Float_Text_IO;


procedure MoreDers is

   type    NEW_FLOAT1 is digits 5;
   type    NEW_FLOAT2 is digits 5 range 1.0..12.0;
   type    DER_FLOAT  is new FLOAT;
   type    LIM_FLOAT  is new FLOAT range 0.0..555.5;
   subtype SUB_FLOAT  is     DER_FLOAT range -2.3..12.8;

   type    NEW_FIXED1 is delta 0.5  range 1.0..12.0;
   type    NEW_FIXED2 is delta 0.05 range 1.0..12.0;
   type    DER_FIXED  is new NEW_FIXED1;
   type    LIM_FIXED  is new NEW_FIXED1 range 1.0..5.5;
   subtype SUB_FIXED  is     DER_FIXED range 2.1..2.8;

   type    DER_CHAR   is new CHARACTER;
   type    ALPHA_CHAR is new CHARACTER range 'A'..'Z';
   subtype HEX_CHAR   is     ALPHA_CHAR range 'A'..'F';

   type    DAY         is (MON, TUE, WED, THU, FRI, SAT, SUN);
   type    WEEKDAY     is new DAY range MON..FRI;
   subtype BOWLING_DAY is WEEKDAY range WED..THU;

   Direction : FLOAT;
   Speed     : DER_FLOAT := 100.0;
   Length    : LIM_FLOAT := 72.41;
   Size      : SUB_FLOAT := 4.3;


begin
   Direction := 1.2 + FLOAT(Length + LIM_FLOAT(Speed * Size));
   Put(Direction);
end MoreDers;
