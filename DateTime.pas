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
end.
