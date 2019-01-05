with Ada.Text_IO;
use Ada.Text_IO;

procedure Nesting is
   procedure Triple is
         procedure Second_Layer is
               procedure Bottom_Layer is
               begin
                  Put_Line("This is the layer 1.");
               end Bottom_Layer;
         begin
            Put_Line("This is the layer 2.");
            Bottom_Layer;
            Put_Line("We are back up to the layer 2.");
         end Second_Layer;
   begin
      Put_Line("This is procedure layer 3 talking to you.");
      Second_Layer;
      Put_Line("We are back up to the procedure lay 3.");
   end Triple;
begin
   Put_Line("Start the layer 3 nesting here.");
   Triple;
   Put_Line("Finished, and back to the top level.");
end Nesting;

-- Start the layer 3 nesting here.
-- This is procedure layer 3 talking to you.
-- This is the layer 2.
-- This is the layer 1.
-- We are back up to the layer 2.
-- We are back up to the procedure lay 3.
-- Finished, and back to the top level.
