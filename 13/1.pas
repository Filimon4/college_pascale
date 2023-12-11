var
  F_in, F_out: file of char;
  s: char;
  ind, space_ind, i: integer;
  
begin
  assign(F_in, '1_char.txt');
  reset(F_in);
  ind:=1;

  while not eof(F_in) do begin
    Read(F_in, s);
    if (s = ' ') then begin
      space_ind := ind;
    end;
    inc(ind);
  end;

  assign(F_out, '1_char_out.txt');
  rewrite(F_out);
  
  reset(F_in);
  ind:=1;
  while not eof(F_in) do begin
    Read(F_in, s);
    if ind < space_ind then begin
      write(F_out, s);
    end;
    inc(ind);
  end;
  close(F_in);
  close(F_out);
  Rename(F_out, '1_char.txt')
end.