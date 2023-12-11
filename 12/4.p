var
  F_in: Text;
  line: String;
  i, k: integer;

begin
 write('Line: ');
 Readln(k);
 assign(F_in,'text.txt');
 Reset(F_in);
 i:=0;
 while not Eof(F_in) do begin
  Readln(F_in, line);
  inc(i);
  if i = k then begin
    Writeln('');
  end;
  Writeln(line);
 end;
 close(F_in);
end.