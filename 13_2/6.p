type t_chs = set of Char;
const
  lett: t_chs = ['a'..'z','A'..'Z','_'];
  num: t_chs = ['0'..'9'];
var
  str: string;
  i: byte;
  flag: boolean;

begin
  readln(str);
  flag:=true;
  for i:=1 to Length(str) do begin
    if not((str[i] in lett) or (str[i] in num)) then begin
      flag:=false;
    end;
  end;
  if flag = true then begin
    writeln('YES');
  end
  else begin
    writeln('NO');
  end;
end.