% 𝑚(𝑡)=A+20*sin(2*pi*B*t+45*pi/180)+15*cos(2*pi*30*t+C);
% graficar con el simulador en el dominio del tiempo, 
% así como su espectro bilateral de frecuencia.
clear all;
close all;
A=6; %ultimo digido del número de cédula
B=16; %dos últimos digitos del número de cédula
C=(A+B)*pi/180; %variable para el angulo del coseno en radianes
resolution=100; %resolucion del muestreo del eje independiente
T=2*pi; %tiempo a graficar
t=linspace(0,2*T,resolution); %vector de tiempo como variable independiente

%Analizando la primera parte A+20*sin(2*pi*B*t+45*pi/180)
%A=Desface DC
Amplitud=20; %20=Amplitud
w1=2*pi*B; %frecuencia
s1=cos(w1*t+45*pi/180-pi); % convirtiendo señal sin(w1*t+45*pi/180) 
                           % a terminos de coseno
figure (1); %separa la figura a imprimir
subplot(3,3,1);
plot (t,s1,'b'); %imprime en pantalla
title ("señal 1"), grid on;
subplot(3,3,4);
for i=1:resolution
DC(i)=A;
Amp(i)=Amplitud;
end
plot (t,Amp,'g'); %imprime en pantalla
title ("amplitud"), grid on;
subplot(3,3,7);
plot (t,DC,'r'); %imprime en pantalla
title ("Desface DC"), grid on;
subplot(3,3,2);
stem(t,s1);
title ("señal en tiempo discreto"), grid on;



