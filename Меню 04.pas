






const
  pi = 3.14;
  
const
  can = 5;
  procedure casino();
   begin
  readln('напиши количество цифр', x);
  readln('напиши количество попыток', k);
  randomize;
  a := random(x);
  b := -1;
  
  while (k > 0) and (a <> b) do
  begin
    readln(b);
    
    if b = a then //w
      Writeln('Молодец,ты молодец! Ага именно ты!Да ты! Да да. Деньги остаются у нас')
    else
    begin //сколько ходов осталось 
      Writeln('НЕ молодец');
      writeln('У тебя ', k, ' попыток');//сколько попыток осталось
      k := k - 1;
    end;
  end;
  if k=0 then
  Writeln('Вот число ', a);
  
  
end;
  procedure  menu2();
  begin
  Writeln('^^^^^^^^^^');
  Writeln('--МЕНЮ-2-');
  Writeln('1-калькулятор');
  Writeln('2-бочки');
  Writeln('=============');
  end;//menu2
procedure endingh();
begin
  Writeln('Нажмите enter(return) чтобы продолжить');
  readln();
end;//endingh
procedure menu_show();
begin
  Writeln('^^^^^^^^^^');
  Writeln('--МЕНЮ--');
  Writeln('1-добро');
  Writeln('2-пожаловать');
  Writeln('3-сюрприз');
  Writeln('=============');
end;//Menu SHOW
procedure barrels();
var a, R, h, ar, n, v, S1, S2: real;
begin
      Readln(a, R, h);
      ar := round(a);
      if ar <> a then 
        writeln('Принимаются только целые бочки!!')
      else begin
        if (a < 1) or (R < 0) or (h < 0) then begin
          Writeln('Бочек нet');
          if a < 1 then Writeln('т.к a<1');
          if R < 0 then Writeln('т.к. R<0');
          if h < 0 then Writeln('т.к. h<0');
        end
        else begin// var ok  
          S1 := pi * R * R;
          S2 := 2 * pi * R * h;
          n := a * (S1 + S2);
          v := round(n / can + 0.5);
          Writeln('Банок стока-->', v:4:2);
        end;// else
      end;//if ar<>a
endingh();//ending
end;// procedure barrels



var
  a, number, ar, R, h, n, v, S1, S2, a, b, k, x: real;
  begin
  while (number<>3) do begin
  menu_show();//menur1
  readln(number);
  if number = 1 then 
  begin
    Writeln('КАЗИНО 2 КИРКИ');
    endingh();//ending
  end;
  
  if number = 2 then 
  begin
    menu2();//menu2
    readln(number);
    if number = 1 then begin
     writeln('Будет калькулятор');
     endingh();//ending
    end;
    if number = 2 then  
    begin
      writeln('Бочки');
      barrels();//Бочки))
    end; //number =2
  end;
  end;
end.