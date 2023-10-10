uses Math;

var
  arr: array[1..40] of real; // Пример массива
  i: integer;
  neg: real;

function tg(arg: real): real;
begin
  tg := sin(arg) / cos(arg);
end;

procedure fun(x: real);
var
  res: real;
begin

  if (x < -6) then
  begin
    res := x ** 2 + (-x);
    writeln('Значение равно: ', res);
  end
  else if (x >= -6) and (x < -1) then
  begin
    res := -x / Sin(x) + x ** 3;
    writeln('Значение равно: ', res);
  end
  else if (x >= -1) and (x < 2) then
  begin
    if x >= 0 then
      res := tg(x) / Power(x, 1/3)
    else
      res := -tg(abs(x)) / Power(abs(x), 1/3);
  end
  else if (x <= 2) then
  begin
    res:= ln(100)/ln(x);
    writeln('Значение равно: ', res);
  end
  else
    writeln('Значение не подходит');
end;

begin
  neg:= -8;
  while neg <= 4 do
  begin
    writeln('Результат для ', neg);
    fun(neg);
    neg := neg + 0.3;
  end;
end.
