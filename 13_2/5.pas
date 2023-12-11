var
   goda: set of byte;
   number, b:integer;
   
begin
goda:=[2,3,4];
writeln ('введите количество лет');
readln(number);

b := number mod 100;

if b = 1 then begin
    writeln (number,' год');
end
else if b in goda then begin
    writeln (number,' года');
end
else begin
    writeln (number,' лет')
end;
end.