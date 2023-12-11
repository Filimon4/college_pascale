
var
  filetext: text;
  arr: array[1..100] of integer;
  min, max, ind, num, i: integer;

begin
  Assign(filetext, 'numbers.txt');
  reset(filetext);
  ind:=1;
  while not eof(filetext) do begin
    Readln(filetext, num);
    arr[ind] := num;
    inc(ind);
  end;
  min := arr[1];
  max := arr[1];
  for i:=1 to 100 do begind
    if arr[i] > max then
      max := arr[i];
    if arr[i] < min then
      min := arr[i];
  end;
  writeln(min);
  writeln(max);
end.