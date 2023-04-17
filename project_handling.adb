--Jonbi171: Samarbetat med Johpe730, Johan Bergius, Samma program
--Jonbi171: Samarbetat med Emibe457, Emil Bergkvist, Samma program
--Jonbi171: Samarbetat med Cajbj386, Cajsa Björkman, Samma program
with ada.text_IO;             use ada.text_IO;
with ada.integer_text_IO;     use ada.integer_text_IO;
with ada.command_Line;        use ada.command_Line;
with ada.Unchecked_Deallocation;

package body project_handling is

   procedure free is
      New ada.Unchecked_Deallocation(image_area_type, image_area_ptr);

   ------------------------------------------------------------------------------------------------------------------
   --Konverterar PBM-filer
   procedure get_PBM(F: in File_type;
                     pixel: out pixel_type) is  

      C : character;
   begin 
      get(F, C);

      if C = '0' then
	 pixel.R := 255;
	 pixel.G := 255;
	 pixel.B := 255;
      else
	 pixel.R := 0;
	 pixel.G := 0;
	 pixel.B := 0;
      end if;
      pixel.alpha := false;
      
   end get_PBM;

   ------------------------------------------------------------------------------------------------------------------
   --Konverterar PPM-filer
   procedure get_PPM(F : in File_type;
                     pixel: out pixel_type) is
      
   begin

      Get(F, Pixel.R);
      Get(F, pixel.G);
      Get(F, pixel.B); 

      pixel.Alpha := false;   

   end get_PPM;
   

   ------------------------------------------------------------------------------------------------------------------
   --Konverterar PGM-filer
   procedure get_PGM(F: in file_type;
                     pixel: out pixel_type;
                     Scale: in integer) is
      data: integer;

   begin
      get(F, data);
      pixel.R := data * (255 / scale); 
      pixel.G := data * (255 / scale);
      pixel.B := data * (255 / scale);

      pixel.alpha := false; 

   end get_PGM;
   ------------------------------------------------------------------------------------------------------------------

   function Is_Empty (Image: in Image_Type)
		     return Boolean is
      
   begin
      
      if(Image.Image_Area) = null then
	 return True;
      else
	 return False;
      end if;
      
   end Is_Empty;

   procedure read (file_name: in string;
		   Image: out image_type) is
      Str : String(1..3);
      C: Character;
      Bool : Boolean;
      F1 : file_type;
      Scale, X_Dim, Y_Dim, I: Integer;
   begin

      open(F1, in_file, file_name);

      get_line(F1, Str, I);
      Skip_line(F1);
      
      look_Ahead(F1,C,Bool);
      if C = '#' then
	 skip_line(F1);
      end if;
      
      get(F1, Image.X_Dim);
      get(F1, Image.Y_dim);

      X_dim:= image.X_Dim;
      Y_dim:= image.Y_Dim;

      image.image_area:= new image_area_Type(1..X_dim, 1..Y_dim);
      
      if Str = "P2" or Str = "P2a" or Str = "P3" or Str = "P3a" then
	 Get(F1, Scale);
      end if;
      For Y in 1..Y_Dim loop
	 For X in 1..X_dim loop
    if I = 3 and Str(3) = 'a' then
    --Underprogram för att hämta transparens-filer
    null;
    elsif I = 2 then
	    if Str = "P3" then
	       Get_PPM(F1, Image.Image_area(X,Y));
	    elsif Str = "P2" then
	       Get_PGM(F1, image.Image_area(X, Y), Scale);
	    elsif Str = "P1" then
	       Get_PBM(F1, Image.Image_area(X, Y));
	    end if;
	    end if;
	 end loop;
      end loop;
      skip_line;
      close(F1);
   end read;
   
   function Select_Area(Image: in Image_Type;
			X1, Y1, X2, Y2: in Integer)
		       return Image_Type is     

      Mini_image : Image_Type;

   begin 
      Mini_Image.X_Dim := (X2-X1+1);
      Mini_Image.Y_Dim := (Y2-Y1+1);

      mini_image.Image_area := new image_area_Type(1..Mini_image.X_Dim, 1..Mini_image.Y_Dim);
      for Y in 1..Mini_image.Y_Dim loop
	 for X in 1..Mini_image.X_Dim loop
	    Mini_image.Image_area(X,Y):= image.Image_area((X1-1+X),(Y1-1+Y)); 
	 end loop;
      end loop;
      
      return Mini_image;

   end Select_Area;

   function X_Dimension(Mini_image: in Image_type) return Integer is
      
   begin
      
      return mini_image.X_Dim;
   end X_Dimension;

   function Y_Dimension(Mini_image: in Image_type) return Integer is
      
   begin
      
      return mini_image.Y_Dim;
   end Y_Dimension;

   procedure put_pixel(pixel: in pixel_type) is

   begin

      put(" [");
      Put(pixel.R, Width=>3); 
      Put(',');
      Put(Pixel.G, Width=>4);
      put(',');
      Put(Pixel.B, Width=>4);
      put(']');

      --     if pixel.alpha then 
      --   Put("True");
      --     else
      --   put("False");
      --     end if;

   end put_pixel;

   procedure Write_Raw_Dump(mini_image: in image_type) is

   begin

      put_line("========== RAW DUMP ==========");
      put("Image dimension X_Dim: ");
      put(mini_image.X_Dim, width=>1);
      new_line;
      put("Image dimension Y_Dim: ");
      put(mini_image.Y_Dim, width=>1);
      new_line;
      put_line("Image:");

      if not Is_Empty(mini_image) then
	 for Y in 1..mini_image.Y_Dim loop
	    for X in 1..mini_image.X_Dim loop
	       put_pixel(mini_image.image_area(X, Y));
	    end loop;
	    new_line;
	 end loop;
      end if;

   end Write_Raw_Dump;

   procedure delete(image: in out image_type) is

   begin
      if not Is_Empty(image) then
	 free(image.Image_area);
	 image.X_dim := 0;
	 Image.Y_dim := 0;
      end if;

   end delete;

end project_handling;
