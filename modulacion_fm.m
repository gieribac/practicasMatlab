%Algoritmo para Modulación FM
clc
clear all
close all
%parametros iniciales
fp=800; %frecuencia en Hz de la portadora
fm=200; %frecuencia en Hz de la moduladora
amp=10; %amplitud
k=3; %indice de modulación
wp=2*3.1416*fp; %velocidad angular portadora
wm=2*3.1416*fm; %velocidad angular moduladora
temp1=1;
%vector de tiempo

temp1=0:0.0001:0.05 


%señal fm en el tiempo: fmt=amp*sen(wp*t+k*sen(wm*t))
fmt=amp*sin(wp.*temp1+k*sin(wm.*temp1));

%impresion el el dominio del tiempo de la señal en FM
plot(fmt);
title('SEÑAL FM(t)');
xlabel ('tiempo');
ylabel ('amplitud');
ylim([-11 11]);
xlim([-1 length(temp1)+1]);