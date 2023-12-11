
const
  m = 10;

var
  filetext: text;
  a: string;
  i: integer;
  number: string;
  
begin
  assign(filetext, 'prog.txt');
  rewrite(filetext);
  for i:=1 to m do begin
    writeln(filetext, i);
  end;
  reset(filetext);
  while not Eof(filetext) do begin
    Readln(filetext, number);
    Writeln('Read from file: ', number);
  end;
  close(filetext);
end.
