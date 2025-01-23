```ada
procedure Example_Solution is
   type My_Array is array (1..10) of Integer;
   My_Arr : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
   I : Integer := My_Arr'First;
begin
   for J in My_Arr'Range loop
      if My_Arr(J) = 5 then
         I := J;
         exit;
      end if;
   end loop;

   -- Check if I is within the array bounds before accessing
   if I in My_Arr'Range then
      Put_Line(My_Arr(I));
   else
      Put_Line("Index out of range");
   end if;
end Example_Solution;
```