uses sysutils;

var
  F_in, F_out_1, F_out_2: File of Real;
  i : integer;
  n : real;

begin
  assign(F_in, '3_real.txt');
  rewrite(F_in);
  assign(F_out_1, '3_real_out_1.txt');
  rewrite(F_out_1);
  assign(F_out_2, '3_rea_out_2.txt');
  rewrite(F_out_2);

  for i:=1 to 5 do begin
    read(n);
    write(F_in, n);
    if i mod 2 = 0 then begin
      write(F_out_1, n);
    end
    else begin
      write(F_out_2, n);
    end;
  end;

  close(F_in);
  close(F_out_1);
  close(F_out_2);
end.