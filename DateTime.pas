begin
//Високостность года
  var Year := ReadInteger('Введите год :');
  Assert(Year >= 0, 'Год не может быть отрицательным!');
  var flag := False;
  
  if Year.Divs(4) then
    if Year.Divs(100) and not Year.Divs(400) then
      flag := False
    else
      flag := True;
  Print($'Год високостный :{flag}');


// Близовсть к новому году
  var (day_1, month_1) := ReadInteger2('Введите через пробел первые пару чисел (день и месяц):');
  var (day_2, month_2) := ReadInteger2('Введите через пробел вторые пару чисел (день и месяц):');
  Assert(((day_1 in 1..31) and (day_2 in 1..31)), 'Вы ввели неверный день!');
  Assert(((month_1 in 1..12) and (month_2 in 1..12)), 'Вы ввели неверный месяц!');
  
  if ((month_1 = 2) and (day_1 >  29)) or ((month_2 = 2) and (day_2 > 29)) then
    Print('В феврале не может быть более 29 дней!')
  else
    begin
    (day_1, month_1) := (day_2 - day_1, month_2 - month_1);
    if month_1 > 0 then
      Print(2);
    if month_1 < 0 then
      Print(1);
    if month_1 = 0 then
    begin
      if day_1 > 0 then
        Print(2)
      else
        Print(1)
    end;
  end;


//кол-во дней в введённом ранее году
  var count := 365;
  if flag then
    count += 1;
  Print($'Кол-во дней в году {count}');


//кол-во дней между годами
  var (year1, year2) := ReadInteger2('Введите первый и второй год: ');
  Assert((year1 > 0) and (year2 > 0), 'Год не может быть отрицательным');
  Assert(year1 <= year2, 'Расположите года по возрастанию');
  var (days, sum) := (365, 0);
  
  for var i := year1 to year2 do
  begin
    if i.Divs(4) then
      if i.Divs(100) and not i.Divs(400) then
        sum += days
      else
        sum += days + 1
    else
      sum += days;
  end;
  
  Print($'Кол-во дней = {sum}');

  
end.
