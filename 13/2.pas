uses sysutils;

var
  F_in, F_out: text;
  i, maxLen: integer;
  ind: LongInt;
  s: string;
  stack, f: string;
  arr: array[1..5] of string;
  arr_filter: array[1..5] of string;
  
begin
  assign(F_in, '2_line.txt');
  rewrite(F_in);
  assign(F_out, '2_line_out.txt');
  rewrite(F_out);
  stack := '';
  maxLen:= 0;

  for i:=1 to 5 do begin
    Readln(s);
    write(F_in, s);
    arr[i] := s;
  end;

  
  for i:=1 to 5 do begin
    if (Length(arr[i]) > maxLen) then
      maxLen := Length(arr[i]);
  end;
  
  
  ind := 1;
  for i:=1 to 5 do begin
    if Length(arr[i]) = maxLen then begin
      arr_filter[ind] := arr[i];
      inc(ind);
    end;
  end;
  
  reset(F_in);
  for i:=Length(arr_filter) downto 1 do begin
    write(F_out, arr_filter[i]);
  end;

  close(F_in);
  close(F_out);
  
end.