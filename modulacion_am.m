%Algoritmo para Modulación AM
clc
clear all
close all
% Vam(t) = Vc*(1+Vm/Vc*Cos(Wm*t))*Cos(Wc*t)
Vc = 6;
fm= 16000;
fc= 640000;
porcentaje_mod= 2;
Wm=2*3.1416*fm;
Wc=2*3.1416*fc; 
Vm=Vc*porcentaje_mod;
resolucion=1000;
t = linspace(0,5/fm,resolucion); % tiempo a visualizar la señal
Vm_t=Vm*cos(Wm*t);
Vc_t=Vc*cos(Wc*t);
Vam_t = Vc.*(1+(Vm/Vc)*cos(Wm*t)).*cos(Wc*t);
figure(1)
subplot(2,1,1)
plot (t,Vm_t)
title('Señal moduladora Vm(t)'),grid on
subplot(2,1,2)
plot (t,Vc_t)
title('Señal portadora Vc(t)'),grid on
figure(2)
plot (t,Vam_t)
title('Señal modulada Vam(t)'),grid on