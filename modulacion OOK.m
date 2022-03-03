clc
clear all
close all
resolucion=1000000; %acá se ajusta la resolución de la gráfica
A=6; % último digito de CC=6
fc=100*16; % dos últimos dígitos de CC=16, frecuencia=100*16
wc=2*pi()*fc;
T_bernoulli=10/fc; %periodo de la señal de Bernoulli 10 veces el de fc
f_bernoulli=1/T_bernoulli;
w_b=2*pi*f_bernoulli; % se pasa la frecuencia de Hz a radianes
A_b = 6; % Se define la amplitud de la señal
t_b = linspace(0,1/f_bernoulli,resolucion);
for i=1:1:5
ciclo_util = randi([10 100],1,1);
if i==1
B1=A_b*square(w_b*t_b,ciclo_util);
elseif i==2
B2=A_b*square(w_b*t_b,ciclo_util);
elseif i==3
B3=A_b*square(w_b*t_b,ciclo_util);
elseif i==4
B4=A_b*square(w_b*t_b,ciclo_util);
elseif i==5
B5=A_b*square(w_b*t_b,ciclo_util);
end
end
senal_moduladora=0.5+[B1,B2,B3,B4,B5];
t = linspace(0,5/f_bernoulli,5*resolucion);
senal_portadora=A*sawtooth(wc*t);
mod_OOK=senal_moduladora.*senal_portadora;
figure(1);
subplot(3,1,1)
plot (t,senal_moduladora),title('Señal moduladora'),grid on
subplot(3,1,2)
plot (t,senal_portadora),title('señal portadora'),grid on
subplot(3,1,3)
7
plot (t,mod_OOK),title('señal modulada OOK'),grid on