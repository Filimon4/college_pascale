var
 S:String;
 F_in,F_temp: File of Real;
 temp:Real;
 min, max: real;
 min_ind, max_ind, ind: integer;
begin
  Assign(F_in,'6_test_text.txt');
  Reset(F_in);
  Assign(F_temp,'6_test_text1.txt');
  ReWrite(F_temp);
  min := 0;
  max := 0; ind := 1;
  min_ind:=1; max_ind:=1;
  while (not eof(F_in)) do
  begin
    Read(F_in,temp);
    if temp > max then begin 
      max := temp;
      max_ind := ind;
    end
    else if temp < min then begin 
      min := temp;
      min_ind:=ind;
    end;
    
    Write(F_temp,temp);
    inc(ind);
  end;
  reset(F_in); reset(F_temp);

  ind:=1;
  while not eof(F_in) do begin
    Read(F_in, temp);
    if ind = min_ind then begin
      write(F_temp, max);
    end
    else if ind = max_ind then begin
      write(F_temp, min);
    end
    else begin
      write(F_temp, temp);
    end;
    
    inc(ind);
  end;

  Close(F_in);
  Close(F_temp);
end.