var
  filetext: text;
  s: string;

begin
  assign(filetext, 'prog.txt');
  Readln(s);
  Append(filetext);
  writeln(filetext, s);
  close(filetext)
end.