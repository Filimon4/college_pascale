type anketa = record
    fio : string;
    birth: string;
    kurs: 1..5;
end;
var d:  anketa;
begin
  d.fio:='Rykov Efim Vyt';
  d.birth:='09.11.2005';
  d.kurs:=2;
  writeln(d.fio,' / ',d.birth,' /',d.kurs);
end.