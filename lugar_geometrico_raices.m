%---DISEÑO BASADO EN EL LUGAR GEOMETRICO DE LAS RAICES---
close all
clear all
clc
Numerador=[0 0 0 0 0 1.2142];%k=0.2;[0 0 0 0 0 6.071] con k=1
Denominador=[1 -0.926];
Gz=tf(Numerador,Denominador,-1) %definición bloque directo
%-1 indica sistema de tiempo discreto con tiempo de muestra no especifico
Hz=1
rlocus(Gz*Hz) %obtención lugar de las raíces figura 1
xlabel('eje real')
ylabel('eje imaginario')
title ('lugar de las raices')
axis([-1.5 1.5 -1.5 1.5]) %escalado de ejes
Mz=feedback(Gz,Hz) %sistema realimentado
polos=pole(Mz) %comprobación de estabilidad
abs(polos) %comprobación módulo mayor Igual a 1
figure % figura 2
pzmap(Mz) %plano de polos y ceros
axis([-1.5 1.5 -1.5 1.5]) %escalado de ejes
xlabel('eje real')
ylabel('eje imaginario')
title ('plano de polos y ceros')
figure % figura 3
step(Mz) % comprobación respuesta
xlabel('k*t')
ylabel('Amplitud')
title('respuesta escalón unitario')