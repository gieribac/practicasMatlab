% se graficará el espectro bilateral de frecuencia
% 𝑚(𝑡)=A+20*sin(2*pi*B*t+45*pi/180)+15*cos(2*pi*30*t+C)
% A*cos(w*t+a)=(A/2)*e^(j*(wt+a))+(A/2)*e^-(j*(wt+a)) (identidad de euler)
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
                           % a terminos de coseno_
s0=A+Amplitud1*s1+Amplitud2*s2; % equivale a 𝑚(𝑡)

% el valor de las amplitudes es la mitad, se debe reflejar el vector de
% frecuencias sobre el eje vertical y los valores de fase son los mismos
% para las frecuencias negativas

Vector_amplitudes=[Amplitud2/2 Amplitud1/2 1 Amplitud1/2 Amplitud2/2]; 
%[7.5 10 1 10 7.5]
%equivale a las semiamplitudes de los terminos

Vector_frecuencias=[-w2/(2*pi) -w1/(2*pi) 0 w1/(2*pi) w2/(2*pi)]; 
%[-30 -16 0 16 30]
%se considera 0 en señal DC, se divide entre 2pi para conseguir Hz
%se consideran las frecuencias negativas

Vector_fases=[C*180/pi (45*pi/180-pi)*180/pi 0 (45*pi/180-pi)*180/pi C*180/pi]; 
%[22 -135 0 -135 22]
%equivale a 0 para DC y se multiplica por 180/pi para obtener gradianes

figure (4); %separa la figura a imprimir
subplot(2,1,1);
stem(Vector_frecuencias,Vector_amplitudes,'filled','linewidth',2);
title ("Espectro bilateral de frecuencia: Espectro de amplitud"), grid on;
xlabel ("Frecuencia en HZ");
ylabel ("Amplitud");
subplot(2,1,2);
stem(Vector_frecuencias,Vector_fases,'filled','linewidth',2);
title ("Espectro bilateral de frecuencia: Espectro de fases"), grid on;
xlabel ("Frecuencia en HZ");
ylabel ("Angulo de fase en gradianes");