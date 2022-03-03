clc;
clear all;
syms s;
s=tf('s');
g=82*exp(-5*s)/(13*s+1);
step (10*g+27)
title("Respuesta al Escalon");
ylabel ("Temperatura");
xlabel ("Tiempo");
grid on;

