% 𝑚(𝑡)=A+20*sin(2*pi*B*t+45*pi/180)+15*cos(2*pi*30*t+C);
% graficar con el simulador en el dominio del tiempo, 
% así como su espectro bilateral de frecuencia.
clear all;
close all;
A=6; %ultimo digido del número de cédula
B=16; %dos últimos digitos del número de cédula
C=(A+B)*pi/180; %variable para el angulo del coseno en radianes
resolution=400; %resolucion del muestreo del eje independiente
T=2*pi; %tiempo a graficar
t=linspace(0,2*T,resolution); %vector de tiempo como variable independiente

%Analizando la segunda parte 15*cos(2*pi*30*t+C)
%A=Desface DC
Amplitud2=15; %20=Amplitud
w2=2*pi*30; %frecuencia
s2=cos(w2*t+C); % señal cos(2*pi*30*t+C) 
                           % a terminos de coseno
figure (2); %separa la figura a imprimir
subplot(4,1,1);
plot (t,s2,'b'); %imprime en pantalla
title ("señal 2"), grid on;
subplot(4,1,2);
for i=1:resolution
DC(i)=0;
Amp(i)=Amplitud2;
end
plot (t,Amp,'g'); %imprime en pantalla
title ("amplitud"), grid on;
subplot(4,1,3);
plot (t,DC,'r'); %imprime en pantalla
title ("Desface DC"), grid on;
subplot(4,1,4);
stem(t,s2); %imprime en pantalla
title ("señal en tiempo discreto"), grid on;