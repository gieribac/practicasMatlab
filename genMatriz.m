matriz=zeros(4,4);
disp("Se pediran los datos del la matriz ");
for i=1:4
    for j=1:4
        matriz(i,j)=input("ingrese el valor de la posición, fila "+i+" y columna "+j+": ");
    end
end
disp(matriz);

