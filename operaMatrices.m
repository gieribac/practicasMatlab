A=zeros(4,4);
B=A;
disp("Se pediran los datos del la matriz A");
for i=1:4
    for j=1:4
        A(i,j)=input("ingrese el valor, fila "+i+" y columna "+j+": ");
    end
end
disp("Se pediran los datos del la matriz B");
for i=1:4
    for j=1:4
        B(i,j)=input("ingrese el valor, fila "+i+" y columna "+j+": ");
    end
end
disp ("Matriz A");
disp (A);
disp ("Matriz B");
disp (B);
disp ("Suma A+B");
disp (A+B);
disp ("Resta A-B");
disp (A-B);
disp ("Multiplicación A*B");
disp(A*B);
disp ("Unión Lógica A|B");
disp(A|B);
disp ("Intersección Lógica A&B");
disp (A&B);
disp ("Diferencia lógica A-B");
C=[];
D=[];
for i=1:(length(A))^2 %se indica recorrer la cantidad total de elementos
   C=[C A(i)]; %Se crea un vector con todos los elementos de A
   D=[D B(i)];
end
E=setdiff (C,D); %diferencia lógica: elementos que estén solo en A
disp (E);
