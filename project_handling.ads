--Jonbi171: Samarbetat med Johpe730, Johan Bergius, Samma program
--Jonbi171: Samarbetat med Emibe457, Emil Bergkvist, Samma program
--Jonbi171: Samarbetat med Cajbj386, Cajsa Björkman, Samma program
package project_handling is

   type image_type is private;

   procedure read (File_name: in string;
		   Image: out image_type);

   function Is_Empty (image: in image_Type)
		     return Boolean;
   
   function Select_Area (Image: in Image_Type;
			 X1, Y1, X2, Y2: in Integer)
			return Image_Type;

   function X_Dimension(Mini_image: in Image_type) return Integer;

   function Y_Dimension(Mini_image: in Image_type) return Integer;
   
   procedure Write_Raw_Dump(mini_image: in image_type);

   procedure delete(image: in out image_type);
   
private


   type pixel_type is
      record
	 R,G,B: integer;
	 Alpha: boolean;
      end record; 

   type image_area_Type is
     array (positive range <>, positive range <>) of pixel_type; 

   type image_area_ptr is
     access image_area_Type;

   type Image_type is
      record
	 X_Dim, Y_Dim: Integer := 0;
	 Image_area: image_area_ptr;
      end record; 



end project_handling;
