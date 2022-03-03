% se especificara la funcion de transferencia gs=1/(s^3+s+7)
gs=tf([1],[1 0 1 7]);
% se usa la funcion tf que pide como parametros, los vectores de
% coeficientes del numerador y denominador respectivamente

% calcular la salida temporal cuando la entrada es un escalón unitario
%Escalon, su transformada de laplace es 1/s 
figure (1);
step(gs);% obtener en el dominio del tiempo gs*1/s

%{
Rampa, su transformada de laplace es 1/s^2.
Para obtener la respuesta de la funcion de transferencia gs a la entrada
rampa, se utilizara step, el cual multiplica la transformada 1/s, por tal
motivo para obtener 1/s^2 perimero se multiplica por 1/s a gs.
Obtener en el dominio del tiempo de gs*1/s=1/(s^4+s^2+7*s).
Step tambien puede recibir vectores de coeficientes de
numeradores y denominadores
%}
figure (2);
step([1],[1 0 1 7 0]);




