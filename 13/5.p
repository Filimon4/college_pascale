var
 S:String;
 F_in: File of Real;
 El2,El1,El:Real;
 i:integer;
 a:real;
 
begin
  Assign(F_in,'5_max.txt');
  rewrite(F_in);
  writeln ('Введите вещественные числа');
  for i:=1 to 5 do begin
      read(a);
      write(F_in,a); {заполняем исходный файл числами}
  end;
  close(F_in);
  Reset(F_in); 
  Read(F_in,El);
  Read(F_in,El1);
  Read(F_in,El2);
  writeln('Результат =');
  if (El1<El)and(El1<El2) then Writeln('s',El1:4:2)
  else begin
    while (not eof(F_in)) and not((El>El1) and (El1<El2)) do begin
      El:=El1;
      El1:=El2;
      Read(F_in,El2);
    end;
    if (El>El1) and (El1<El2) then
       Writeln(El1:4:2)
    else if eof(F_in) and (El1>El) then
       Writeln(El:4:2);
  end;
  Close(F_in);
end.