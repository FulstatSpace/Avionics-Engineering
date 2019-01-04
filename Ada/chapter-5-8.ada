-- Your life
with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure Ch05_1 is

   Year : INTEGER;

begin
   for Age in 0..21 loop
      Put("In");
      Put(Age + 1938,5);
      Put(", I was");
      Put(Age,3);
      Put(" years old");
      if Age = 5 then
         Put(", and started school");
      end if;
      if Age = 17 then
         Put(", and graduated from high school");
      end if;
      Put(".");
      New_Line;
   end loop;
end Ch05_1;




-- Result of execution

-- In 1938, I was  0 years old.
-- In 1939, I was  1 years old.
-- In 1940, I was  2 years old.
-- In 1941, I was  3 years old.
-- In 1942, I was  4 years old.
-- In 1943, I was  5 years old, and started school.
-- In 1944, I was  6 years old.
-- In 1945, I was  7 years old.
-- In 1946, I was  8 years old.
-- In 1947, I was  9 years old.
-- In 1948, I was 10 years old.
-- In 1949, I was 11 years old.
-- In 1950, I was 12 years old.
-- In 1951, I was 13 years old.
-- In 1952, I was 14 years old.
-- In 1953, I was 15 years old.
-- In 1954, I was 16 years old.
-- In 1955, I was 17 years old, and graduated from high school.
-- In 1956, I was 18 years old.
-- In 1957, I was 19 years old.
-- In 1958, I was 10 years old.
-- In 1959, I was 21 years old.
