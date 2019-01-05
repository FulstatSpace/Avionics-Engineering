with Ada.Text_IO;
use Ada.Text_IO;

procedure Enum is

   type DAY is (MON, TUE, WED, THU, FRI, SAT, SUN);
   subtype WORK_DAY is DAY range MON..FRI;
   subtype PLAY_DAY is DAY range SAT..SUN;

   type HEAVENLY_BODY is (MOON, SUN, EARTH, MARS);
   Big_Sphere : HEAVENLY_BODY;

   package Day_IO is new Ada.Text_IO.Enumeration_IO(DAY);
   use Day_IO;

   package Body_IO is new Ada.Text_IO.Enumeration_IO(HEAVENLY_BODY);
   use Body_IO;

   Day_Of_Week : DAY;
   Today       : DAY;
   Happy_Day   : PLAY_DAY;
   Bowling_Day : DAY range THU..SAT;
   Index       : INTEGER;

begin

   Day_Of_Week := WED;                       -- WED
   Day_Of_Week := DAY'FIRST;                 -- MON
   Day_Of_Week := DAY'LAST;                  -- SUN
   Day_Of_Week := DAY'PRED(Day_Of_Week);     -- SAT, Previous
   Day_Of_Week := DAY'SUCC(PLAY_DAY'FIRST);  -- SUN, Rearguard
   Index := DAY'POS(MON);                    -- 0
   Index := DAY'POS(WED);                    -- 2
   Day_Of_Week := DAY'VAL(1);                -- TUE

   for Day_Of_Week in WORK_DAY loop
      Put("We are in the workday loop");
      New_Line;
   end loop;

   Today := THU;
   if Today <= WED then
      Put("Early in the week");
      New_Line;
   end if;

   if Today >= WED then
      Put("Late in the week");
      New_Line;
   end if;

   Today := SUN;
   Big_Sphere := SUN;

   Today := DAY'(SUN);
   Big_Sphere := HEAVENLY_BODY'(SUN);

   Put(Today);
   Put(DAY'PRED(Today));
   Put_Line(" from type DAY.");
   Put(Big_Sphere);
   Put(HEAVENLY_BODY'PRED(Big_Sphere));
   Put_Line(" from type HEAVENLY_BODY");

end Enum;

-- Result of execution

-- We are in the workday loop
-- We are in the workday loop
-- We are in the workday loop
-- We are in the workday loop
-- We are in the workday loop
-- Late in the week
-- SUNSAT from type DAY.
-- SUNMOON from type HEAVENLY_BODY
