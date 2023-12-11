var
  n,k,i,j : integer;
  filetext : text;

begin
  Readln(n);
  Readln(k);
  assign(filetext, 'prog.txt');
  rewrite(filetext);
  for i:=1 to n do begin
    for j:=1 to k do begin
      write(filetext, '*')
    end;
    writeln(filetext, '');
  end;
  close(filetext);
  
end.