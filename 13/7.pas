var
  F_in, F_out: file of char;
  n: char;

begin
  assign(F_in, '7_text.txt');
  assign(F_out, '7_text_out.txt');
  reset(F_in);
  rewrite(F_out);

  while not eof(F_in) do begin
    Read(F_in, n);
    write(F_out, n);
  end;

  seek(F_out,1);
  write(F_out, '!');
  seek(F_out, 3);
  write(F_out, '!');
  seek(F_out, 5);
  write(F_out, '!');
  seek(F_out, 7);
  write(F_out, '!');
  seek(F_out, 9);
  write(F_out, '!');

  close(F_in);
  close(F_out);
  
end.