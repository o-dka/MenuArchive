const
  pi = 3.14;

const
  can = 5;

var
  a, number, ar, R, h, n, v, S1, S2: real;

begin
  
  Writeln('добро-1,пожаловать-2');
  readln(number);
  if number = 1 then 
  begin
    Writeln('тут будет игра')
  end;
  
  if number = 2 then 
  begin
    writeln('калькулятор-1,бочки-2');
    readln(number);
    if number = 1 then begin
      writeln('Будет калькулятор');
    end;
    if number = 2 then  
    begin
      writeln('Бочки');
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
    end; //number =2
  end;
end.