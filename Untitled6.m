% se representará la señal completa como suma de las dos señales anteriores
% 𝑚(𝑡)=A+20*sin(2*pi*B*t+45*pi/180)+15*cos(2*pi*30*t+C)
clear all;
close all;
A=6; %ultimo digido del número de cédula
B=16; %dos últimos digitos del número de cédula
C=(A+B)*pi/180; %variable para el angulo del coseno en radianes
resolution=400; %resolucion del muestreo del eje independiente
T=2*pi; %tiempo a graficar
t=linspace(0,T,resolution); %vector de tiempo como variable independiente

%Analizando la segunda parte 15*cos(2*pi*30*t+C)
Amplitud2=15; %20=Amplitud
w2=2*pi*30; %frecuencia
s2=cos(w2*t+C); % señal cos(2*pi*30*t+C) 
                           % a terminos de coseno
%Analizando la primera parte A+20*sin(2*pi*B*t+45*pi/180)
%A=Desface DC
Amplitud1=20; %20=Amplitud
w1=2*pi*B; %frecuencia
s1=cos(w1*t+45*pi/180-pi); % convirtiendo señal sin(w1*t+45*pi/180) 
                           % a terminos de coseno
s0=A+Amplitud1*s1+Amplitud2*s2; % equivale a 𝑚(𝑡)

figure (3); %separa la figura a imprimir
subplot(3,1,1);
plot (t,s1,'b'); %imprime en pantalla
title ("señal 1"), grid on;
subplot(3,1,2);
plot (t,s2,'g'); %imprime en pantalla
title ("señal 2"), grid on;
subplot(3,1,3);
plot (t,s0,'r'); %imprime en pantalla
title ("señal total incluyendo desface DC"), grid on;

