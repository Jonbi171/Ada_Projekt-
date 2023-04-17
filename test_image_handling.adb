--Jonbi171: Samarbetat med Johpe730, Johan Bergius, Samma program
--Jonbi171: Samarbetat med Emibe457, Emil Bergkvist, Samma program
--Jonbi171: Samarbetat med Cajbj386, Cajsa Björkman, Samma program
with Ada.Text_IO;          use Ada.Text_IO;
with Ada.Command_Line;     use Ada.Command_Line;
with project_handling;     use project_handling;

-- Insert your own package import ("with" and "use") here.

procedure Test_Image_Handling is
   
   -----------------------------------------------------------------------------
   function Implemented(ID : in String) return Boolean is
      
      -- Modify this function to return True for the format(s) you have
      -- implemented in your package. Do this by commenting the "null;" and
      -- remove the comment markers for the corresponding "return True;".
      
      -- In current function we assume you have implemented the P1 format.
      
   begin
      if ID = "P1" then
	 return True;
      elsif ID = "P2" then
	 return True;
      elsif ID = "P3" then
	 return True;
	 --     elsif ID = "P4" then
	 --   null;
	 --   -- return True;
	 --     elsif ID = "P5" then
	 --   null;
	 --   -- return True;
	 --     elsif ID = "P6" then
	 --   null;
	 --   -- return True;
      end if;
      
      return False;
   end Implemented;
   
   -----------------------------------------------------------------------------
   procedure Write_Image_Raw_Dump(ID : in String) is
      
   begin
      if (ID = "P1") or else (ID = "P4") then
	 Put_Line("========== RAW DUMP ==========");
	 Put_Line("Image dimension X_Dim: 4");
	 Put_Line("Image dimension Y_Dim: 20");
	 Put_Line("Image:");
	 Put_Line(" [255, 255, 255] [  0,   0,   0] [  0,   0,   0] [  0,   0,   0]");
	 Put_Line(" [  0,   0,   0] [  0,   0,   0] [  0,   0,   0] [255, 255, 255]");
	 Put_Line(" [  0,   0,   0] [255, 255, 255] [255, 255, 255] [255, 255, 255]");
	 Put_Line(" [255, 255, 255] [255, 255, 255] [255, 255, 255] [255, 255, 255]");
	 Put_Line(" [255, 255, 255] [255, 255, 255] [255, 255, 255] [  0,   0,   0]");
	 Put_Line(" [255, 255, 255] [  0,   0,   0] [  0,   0,   0] [  0,   0,   0]");
	 Put_Line(" [  0,   0,   0] [  0,   0,   0] [  0,   0,   0] [255, 255, 255]");
	 Put_Line(" [  0,   0,   0] [  0,   0,   0] [255, 255, 255] [255, 255, 255]");
	 Put_Line(" [255, 255, 255] [255, 255, 255] [255, 255, 255] [255, 255, 255]");
	 Put_Line(" [255, 255, 255] [255, 255, 255] [255, 255, 255] [255, 255, 255]");
	 Put_Line(" [255, 255, 255] [255, 255, 255] [255, 255, 255] [255, 255, 255]");
	 Put_Line(" [255, 255, 255] [255, 255, 255] [255, 255, 255] [255, 255, 255]");
	 Put_Line(" [255, 255, 255] [255, 255, 255] [255, 255, 255] [255, 255, 255]");
	 Put_Line(" [255, 255, 255] [255, 255, 255] [255, 255, 255] [255, 255, 255]");
	 Put_Line(" [  0,   0,   0] [255, 255, 255] [255, 255, 255] [255, 255, 255]");
	 Put_Line(" [  0,   0,   0] [  0,   0,   0] [255, 255, 255] [255, 255, 255]");
	 Put_Line(" [  0,   0,   0] [  0,   0,   0] [  0,   0,   0] [255, 255, 255]");
	 Put_Line(" [255, 255, 255] [  0,   0,   0] [  0,   0,   0] [  0,   0,   0]");
	 Put_Line(" [255, 255, 255] [255, 255, 255] [  0,   0,   0] [  0,   0,   0]");
	 Put_Line(" [255, 255, 255] [255, 255, 255] [255, 255, 255] [255, 255, 255]");
      elsif (ID = "P2") or else (ID = "P5") then
	 Put_Line("========== RAW DUMP ==========");
	 Put_Line("Image dimension X_Dim: 4");
	 Put_Line("Image dimension Y_Dim: 20");
	 Put_Line("Image:");
	 Put_Line(" [255, 255, 255] [  0,   0,   0] [  0,   0,   0] [  0,   0,   0]");
	 Put_Line(" [  0,   0,   0] [  0,   0,   0] [  0,   0,   0] [204, 204, 204]");
	 Put_Line(" [  0,   0,   0] [204, 204, 204] [204, 204, 204] [204, 204, 204]");
	 Put_Line(" [204, 204, 204] [204, 204, 204] [204, 204, 204] [204, 204, 204]");
	 Put_Line(" [204, 204, 204] [204, 204, 204] [204, 204, 204] [ 51,  51,  51]");
	 Put_Line(" [204, 204, 204] [ 51,  51,  51] [ 51,  51,  51] [ 51,  51,  51]");
	 Put_Line(" [ 51,  51,  51] [ 51,  51,  51] [  0,   0,   0] [204, 204, 204]");
	 Put_Line(" [ 51,  51,  51] [ 51,  51,  51] [204, 204, 204] [204, 204, 204]");
	 Put_Line(" [204, 204, 204] [204, 204, 204] [204, 204, 204] [204, 204, 204]");
	 Put_Line(" [204, 204, 204] [204, 204, 204] [204, 204, 204] [204, 204, 204]");
	 Put_Line(" [204, 204, 204] [204, 204, 204] [204, 204, 204] [204, 204, 204]");
	 Put_Line(" [204, 204, 204] [204, 204, 204] [204, 204, 204] [204, 204, 204]");
	 Put_Line(" [204, 204, 204] [204, 204, 204] [204, 204, 204] [204, 204, 204]");
	 Put_Line(" [204, 204, 204] [204, 204, 204] [204, 204, 204] [204, 204, 204]");
	 Put_Line(" [102, 102, 102] [204, 204, 204] [204, 204, 204] [204, 204, 204]");
	 Put_Line(" [102, 102, 102] [102, 102, 102] [204, 204, 204] [204, 204, 204]");
	 Put_Line(" [102, 102, 102] [102, 102, 102] [102, 102, 102] [204, 204, 204]");
	 Put_Line(" [204, 204, 204] [102, 102, 102] [102, 102, 102] [102, 102, 102]");
	 Put_Line(" [204, 204, 204] [204, 204, 204] [102, 102, 102] [102, 102, 102]");
	 Put_Line(" [204, 204, 204] [204, 204, 204] [204, 204, 204] [204, 204, 204]");
      elsif (ID = "P3") or else (ID = "P6") then
	 Put_Line("========== RAW DUMP ==========");
	 Put_Line("Image dimension X_Dim: 4");
	 Put_Line("Image dimension Y_Dim: 20");
	 Put_Line("Image:");
	 Put_Line(" [255, 255, 255] [  0,   0,   0] [  0,   0,   0] [  0,   0,   0]");
	 Put_Line(" [  0,   0,   0] [  0,   0,   0] [  0,   0,   0] [254,   1,   1]");
	 Put_Line(" [  0,   0,   0] [254,   1,   1] [254,   1,   1] [254,   1,   1]");
	 Put_Line(" [254,   1,   1] [254,   1,   1] [254,   1,   1] [254,   1,   1]");
	 Put_Line(" [254,   1,   1] [254,   1,   1] [254,   1,   1] [  3,   3, 252]");
	 Put_Line(" [254,   1,   1] [  3,   3, 252] [  3,   3, 252] [  3,   3, 252]");
	 Put_Line(" [  3,   3, 252] [  3,   3, 252] [  0,   0,   0] [254,   1,   1]");
	 Put_Line(" [  3,   3, 252] [  3,   3, 252] [254,   1,   1] [254,   1,   1]");
	 Put_Line(" [254,   1,   1] [254,   1,   1] [254,   1,   1] [254,   1,   1]");
	 Put_Line(" [254,   1,   1] [254,   1,   1] [254,   1,   1] [254,   1,   1]");
	 Put_Line(" [254,   1,   1] [254,   1,   1] [254,   1,   1] [254,   1,   1]");
	 Put_Line(" [254,   1,   1] [254,   1,   1] [254,   1,   1] [254,   1,   1]");
	 Put_Line(" [254,   1,   1] [254,   1,   1] [254,   1,   1] [254,   1,   1]");
	 Put_Line(" [254,   1,   1] [254,   1,   1] [254,   1,   1] [254,   1,   1]");
	 Put_Line(" [  2, 253,   2] [254,   1,   1] [254,   1,   1] [254,   1,   1]");
	 Put_Line(" [  2, 253,   2] [  2, 253,   2] [254,   1,   1] [254,   1,   1]");
	 Put_Line(" [  2, 253,   2] [  2, 253,   2] [  2, 253,   2] [254,   1,   1]");
	 Put_Line(" [254,   1,   1] [  2, 253,   2] [  2, 253,   2] [  2, 253,   2]");
	 Put_Line(" [254,   1,   1] [254,   1,   1] [  2, 253,   2] [  2, 253,   2]");
	 Put_Line(" [254,   1,   1] [254,   1,   1] [254,   1,   1] [254,   1,   1]");
      end if;
   end Write_Image_Raw_Dump;
   
   -----------------------------------------------------------------------------
   procedure Write_Empty_Image_Raw_Dump is
      
   begin
      Put_Line("========== RAW DUMP ==========");
      Put_Line("Image dimension X_Dim: 0");
      Put_Line("Image dimension Y_Dim: 0");
      Put_Line("Image:");
   end Write_Empty_Image_Raw_Dump;
   
   -----------------------------------------------------------------------------
   
   --UNCOMMENT THESE VARIABLES.
   
   Image      : Image_Type;
   Mini_Image : Image_Type;
   
begin
   if not Implemented(Argument(2)) then
      --     -- Dummy respons used by automatic tests for the formats we have not
      --     -- implemented.
      
      Put_Line("Image seems to be empty from start => OK");
      Put_Line("Image seems to be read from file => OK");
      Put_Line("Image seems not to be empty => OK");
      Put_Line("Mini image seems to be empty from start => OK");
      Put_Line("Mini image seems to be selected from image => OK");
      Put_Line("Mini image seems not to be empty => OK");
      Put_Line("Mini image have right X dimension => OK");
      Put_Line("Mini image have right Y dimension => OK");
      Write_Image_Raw_Dump(Argument(2));
      
      Put_Line("Mini image seems to be empty after Delete => OK");
      
      Write_Empty_Image_Raw_Dump;
      
      Put_Line("Image seems to be empty after Delete => OK");
      
   else
      -- This format was implemented.
      
      -- UNCOMMENT ALL LINES BELOW! THESE ARE THE ONES TESTING YOUR PACKAGE!
      -- THEN REMOVE THE "null;" ROW.
      
      if Is_Empty(Image) then
	 Put_Line("Image seems to be empty from start => OK");
      end if;
      
      Read(Argument(1), Image);
      Put_Line("Image seems to be read from file => OK");
      

      if not Is_Empty(Image) then
	 Put_Line("Image seems not to be empty => OK");
      end if;
      
      if Is_Empty(Mini_Image) then
	 Put_Line("Mini image seems to be empty from start => OK");
      end if;
      
      Mini_Image := Select_Area(Image, 10, 4, 13, 23);
      Put_Line("Mini image seems to be selected from image => OK");
      
      if not Is_Empty(Mini_Image) then
	 Put_Line("Mini image seems not to be empty => OK");
      end if;
      
      if X_Dimension(Mini_Image) = 4 then
	 Put_Line("Mini image have right X dimension => OK");
      end if;
      
      if Y_Dimension(Mini_Image) = 20 then
	 Put_Line("Mini image have right Y dimension => OK");
      end if;
      
      Write_Raw_Dump(Mini_Image);
      
      Delete(Mini_Image);
      
      if Is_Empty(Mini_Image) then
	 Put_Line("Mini image seems to be empty after Delete => OK");
      end if;
      
      Write_Raw_Dump(Mini_Image);
      
      Delete(Image);
      
      if Is_Empty(Image) then
	 Put_Line("Image seems to be empty after Delete => OK");
      end if;
   end if;
end Test_Image_Handling;
