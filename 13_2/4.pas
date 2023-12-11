type toy = record
    name : string;
    price: integer;
end;
var
  F_in: file of toy;
  d: array[1..3] of toy;
  t: array[1..3] of toy;
  i, j: integer;
begin
  assign(F_in, 'toys.txt');
  rewrite(F_in);
  
  for i:=1 to 3 do begin
    with d[i] do begin
      Write('name: ');
      ReadLn(name);
      Write('price: ');
      ReadLn(price);
    end;
    Write(F_in, d[i]);
  end;

  reset(F_in);

  for i:=1 to 3 do begin
    Read(F_in, t[i]);
    writeln();
    write(t[i].name);
    write('   ');
    write(t[i].price);
  end;
  writeln();
  close(F_in);
end.