uses math, sysutils;

const
    M = 32000;
type
  arr_int = array of Longint;
  int = Longint;

var
  F_in, F_out: text;
  b: string;
  i, ind: int;
  a: arr_int;

procedure printarr(arr: arr_int);
var
  i: int;
begin
    assign(F_out, 'data_output.txt');
    rewrite(F_out);
    for i := 1 to Length(arr) - 1 do begin
        writeln(F_out,arr[i]);
    end;
    close(F_out);
end;

{ Bubble sort }
function bubble_sort(arr: arr_int): arr_int;
var
  i, j, temp: int;
begin
  for i := 0 to Length(arr) - 1 do
      for j := 0 to Length(arr) - i - 1 do
          if arr[j] > arr[j + 1] then
          begin
              temp := arr[j];
              arr[j] := arr[j + 1];
              arr[j + 1] := temp;
          end;
  bubble_sort:=arr;
end;

{ Radix sort }

function counting_sort(arr: arr_int; max: int; exp: int): arr_int;
var
  arr_out: arr_int;
  i, c, n, j: int;
  count_arr: arr_int;
begin
    setLength(count_arr, 9);
    for i:=0 to 9 do begin
        count_arr[i] := 0;
    end;
    setLength(arr_out, max);
    for i:=0 to Length(arr) - 1 do begin
        arr_out[i]:=0;
    end;

    {count digits}
    for i:=0 to Length(arr) - 1 do begin
        c := Floor(arr[i] div exp) mod 10;
        count_arr[c] := count_arr[c] + 1;
    end;
    {acumulate the result}
    for i:=1 to 9 do begin
        count_arr[i] := count_arr[i-1] + count_arr[i]; 
    end;

    n := Length(arr) -1;
    while n >= 0 do begin
        c := (arr[n] div exp) mod 10;
        j := count_arr[c];
        arr_out[j - 1] := arr[n];
        count_arr[c] := count_arr[c] - 1;
        n := n - 1;
    end;

    for i:=0 to Length(arr)-1 do begin
        arr[i] := arr_out[i];
    end;

    counting_sort := arr;
end;

function max_num(arr: arr_int): int;
var
    max: integer;
begin 
    max := arr[1];
    for i := 0 to Length(arr) - 1 do
    begin
        if arr[i] > max then
            max := arr[i];
    end;
    max_num:= max;
end;

function count_divs(m: int): int;
var
    divs: integer;
begin
    divs:=0;
    while m > 0 do begin
        m := m div 10;
        divs := divs + 1;
    end;
    count_divs:=divs;
end;

function radix_sort(arr: arr_int): arr_int;
var
  m, exp,divs, d, n, max: int;
begin
  max:=max_num(arr);
  divs:=count_divs(max);
  
  exp:=1;
  for n:=1 to divs do begin
    arr := counting_sort(arr, max, exp);
    exp:=exp*10;
  end;
  radix_sort := arr;
end;

{ Body of script }


begin
  assign(F_in, 'data_input.txt');
  reset(F_in);
  ind:=0;
  while not eof(F_in) do begin
    Readln(F_in, b);
    inc(ind);
  end;
  reset(F_in);

  setLength(a, ind);
  i:=0;
  while not eof(F_in) do begin
    Readln(F_in, b);
    a[i] := StrToInt(b);
    inc(i);
  end;
  close(F_in);
  writeln('Start');
  a := bubble_sort(a);
  writeln('Finish');
  printarr(a)
end.