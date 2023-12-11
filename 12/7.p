
var
  input, output: text;
  i,j,n, divs, sum : integer;
  s: string;

begin
  assign(input, 'z3.in.txt');
  reset(input);
  Readln(input, n);
  close(input);
  
  assign(output, 'z3.out.txt');
  rewrite(output);

  for i:=1 to n do begin
    divs:=0;
    for j:=1 to n do begin
      if i mod j = 0 then
        divs := divs + 1;
    end;
    if divs = 5 then
      sum := sum + i;
  end;
  
  Writeln(output, sum);
  close(output);
end.