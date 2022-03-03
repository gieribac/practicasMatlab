%{
clc;
clear all;
Gs = (tf( [82] ,[13 1],'IoDelay', 5))
Gz = c2d(Gs,1)
step(10*Gs+27, '-', 10*Gz+27, 'r-') %se suman 27 de la temperatura ambiente
%}

%-------Respuesta a un escalón unitario--
clc;
clear all;
clear figures;
Numerador=[0 0 0 0 0 6.071];
Denominador=[1 -0.926];
u=ones(1,100);
y=filter(Numerador,Denominador,10*u); %10 de amplitud del escalon
plot(y+27, '+' ) %27 de temperatura ambiente
grid
title('Respuesta a un escalón 10')
xlabel('tiempo');
ylabel('amplitud');