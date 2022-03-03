A=[-1/5,1;-1/4,-9/2];   %{Matriz de estado}%
B=[0;1/4];              %{Matriz de entrada}%
C=[1,0];                %{Matriz de salida}%
D=[0];                  %{Matriz de transmision directa}%

% Calcular funcion de transferencia (relacion numerador/denominador)
% a partir de las matrices de espacios de estados 
[numerador,denominador]=ss2tf(A,B,C,D);

% mostrar la funcion de transferencia
G=tf(numerador, denominador)

% controlabilidad
controlabilidad = ctrb(A,B)

%observabilidad
observabilidad = obsv(A,C)