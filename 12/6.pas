
var
  input, output: text;
  s: string;

begin
  assign(input, 'text_lines.txt');
  reset(input);
  assign(output, 'text_line_output.txt');
  rewrite(output);
  while not eof(input) do begin
    Readln(input, s);
    if Length(s) > 0 then begin
      writeln(output, s);
    end;
  end;
  close(input);
  close(output);
  Rename(output, 'text_lines.txt');
end.