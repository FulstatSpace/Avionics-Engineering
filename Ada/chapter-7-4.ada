with Text_IO;
with Gnat.Io; use Gnat.Io;
procedure Enumio is
   type Some_Enum_Type is (Dog, Cat, Fish, Snail, Slug, Snake);
   package Some_Enum_IO is new Text_Io.Enumeration_IO(Some_Enum_Type);
   use Some_Enum_IO;
   
   Fred: Some_Enum_Type;
   Ch: Character;
begin
   Put("What type of animal? ");
   Get(Fred);
   Get(Ch);   -- Read the terminating character
   if Fred = Snail then
      Put_Line("I like snails, too.");
   else
      Put("Oh, ");
      Put(Fred);
      Put_Line(".");
   end if;
end Enumio;
