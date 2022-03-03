disp("Se generara una matriz A, cuadrada de números aleatorios ");
o=input("Determine el orden de la matriz: ");
disp("Determine el rago de números a generar en la matriz, ");
n=input("Escriba el limite inferior: ");
m=input("Escriba el limite superior: ");
A=randi([n,m],o,o)
a=input("Escriba el dato que quiere buscar: ");
b=find(A==a);
disp("Se genero el dato en las posiciones de los indices: ");
disp(b);
disp("El dato está repetido: "+length (b)+" veces."); 
o='y';
while o=='y'
    i=input("indique el indice del dato que desea modificar: ");
    v=input("indique el nuevo valor del dato: ");
    A(i)=v;
    o=input("desea modificar más datos? y/n: ",'s');
end
fprintf("El valor de la nueva matriz A es: \n");
disp(A);

