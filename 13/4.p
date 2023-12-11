var
  F_in: file of real;
  i: integer;
  n, sum: real;

begin
  assign(F_in, '4_nums.txt');
  rewrite(F_in);

  for i:=1 to 5 do begin
    Read(n);
    write(F_in, n);
    if i mod 2 = 0 then begin
      sum := sum + n;
    end;
  end;

  writeln(sum:4:2);
  close(F_in);
end.