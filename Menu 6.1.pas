﻿uses GraphABC;

const
  pi = 3.14;

const
  can = 5;

//English added+New menu

procedure Animate();
 var x,y,z,i:int64;
    begin
    x:=400;
    y:=400;
    z:=5;
       SetWindowsize(800,800);
       LockDrawing;
      while 1=1 do
    begin
        Circle (x, y, 20);
        RedRaw;
        ClearWindow(clWhite);
        x:=x+z;
        if (x>780)or (x<20)then z:=-z
    end;
end;//Animate


procedure Akinator();
var
  r, l, m, s: int64;
begin
  Writeln('Write your max. number');
  readln(r);
  l := 0;
  while l + 1 <> r do
  begin
    m := l + (r - l) div 2;
    Writeln('Is your number greater than ', m, '?');
    readln(s); //1- yes 0 - no
    if s = 1 then begin
      l := m;
    end
    else 
    begin
      r := m;
    end;
    
    writeln(l, ':', r);
  end;//while 
  Writeln('Is your number ', l, '?'); 
  readln(s);
  if s = 1 then 
    Writeln('Your number is ', l)
  else
    Writeln('Your number is ', r);
end;//Akinator

procedure bank();
var sum,time,endsum,percnt:real;
begin
  writeln('write your current percentage');
  realn(percnt);
  writeln('write sum');
  readln(sum);//начальная сумма
  writeln('write your desired sum')
  readln(endsum);
  while endsum>=sum do begin
    time := time+1;
     sum:= sum*percnt+sum;
  end;//while
  writeln(time);
end;//bank

procedure casino();
var
  a, b, k, x: int64;
begin
  writeln('напиши количество цифр');
  readln(x);
  writeln('напиши количество попыток');
  readln(k);
  randomize;
  a := random(x);
  b := -1;
  while (k > 0) and (a <> b) do
  begin
    readln(b);
    
    if b = a then //w
      Writeln('Молодец,ты молодец! Ага именно ты!Да ты! Да да. Деньги остаются у нас')
    else
    begin//сколько ходов осталось 
      Writeln('НЕ молодец');
      writeln('У тебя ', k, ' попыток');//сколько попыток осталось
      k := k - 1;
    end;
  end;
  if k = 0 then
    Writeln('Вот число ', a);
  
  
end;//casinodvekirki

procedure menu2();
begin
  Writeln('^^^^^^^^^^');
  Writeln('--Menu-2-The_final_reckoning');
  Writeln('1-Number_master');
  Writeln('2-Barrel_Test');
  Writeln('3-Animatest');
  Writeln('=============');
end;//menu2

procedure menu1();
begin
  Writeln('^^^^^^^^^^');
  Writeln('--Menu-1');
  Writeln('1-Casino');
  Writeln('2-Bank');
  Writeln('3-No_Value');
  Writeln('=============');
end;//menu1

procedure endingh();
begin
  Writeln('Press enter(return) to continue!');
  readln();
end;//endingh

procedure menu_show();
begin
  Writeln('^^^^^^^^^^');
  Writeln('--Menu_Main--');
  Writeln('1-Finished');
  Writeln('2-Test');
  Writeln('3-Surprise!');
  Writeln('=============');
end;//Menu2

procedure barrels();
var
  a, R, h, ar, n, v, S1, S2: real;
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
  number: real;

begin
  while (number <> 3) do
  begin
    menu_show();//menu_main
    readln(number);
    
    if number = 1 then
    begin
      menu1();//menu1
     readln(number);
    if number =1 then
    begin
      writeln('Casino');
        casino();
        endingh();//ending
    end;
     if number =2 then
    begin
      bank();
        endingh();//ending
    end;
     if number =3 then
    begin
        endingh();//ending
    end;
    
    end;
    
    if number = 2 then 
    begin
      menu2();//menu2
      readln(number);
      if number = 1 then begin
        writeln('Number master');
        Akinator();
      end;
      if number = 2 then  
      begin
        writeln('Barrels');
        barrels();//Бочки))
      end; //number =2
      
      if number = 3 then
      begin
        Animate();
        endingh();//ending
      end; //number =3
      
    end;
  end;
end.