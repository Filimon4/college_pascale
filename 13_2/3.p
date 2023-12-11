type toy = record
    name : string;
    price: integer;
    age: 1..18;
end;
var d: array[1..3] of toy;
  i, j: integer;
begin
  with d[1] do begin
    name:='дьяволёнок';
    price:=1999;
    age:=18;
  end;
  with d[2] do begin
    name:='кролик';
    price:=1999;
    age:=18;
  end;
  with d[3] do begin
    name:='страший по званию';
    price:=4999;
    age:=18;
  end;

  for i:=1 to 3 do begin
    write(d[i].name);
    write('  --  ');
    write(d[i].price);
    write('  --  ');
    write(d[i].age);
    writeln();
  end;
end.