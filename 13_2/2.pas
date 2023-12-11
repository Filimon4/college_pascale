const
 M = 4;
type anketa = record
    fio : string;
    birth: string;
    kurs: 1..5;
end;
var  students: array[1..M] of anketa;
  i, j:integer;
begin
  students[1].fio:='Sytnikov Ivan Vladimirovich';
  students[1].birth:='01.01.2006';
  students[1].kurs:=2;
  students[2].fio:='Goncharov Miroslav Danilovich';
  students[2].birth:='01.01.2005';
  students[2].kurs:=2;
  students[3].fio:='Kholiv Pavel Iduardovich';
  students[3].birth:='01.01.2005';
  students[3].kurs:=2;
  students[4].fio:='Babenko Aleksandr Aleksadrovich';
  students[4].birth:='01.01.2005';
  students[4].kurs:=2;

  write('Fio                            Birth     Kurs');
  writeln();
  for i:=1 to M do begin
    write(students[i].fio);
    write('   ');
    write(students[i].birth);
    write('   ');
    write(students[i].kurs);
    writeln();
  end;
end.