A=randi(3,1,3); %matriz con 3 numeros aleatorios de tamaño 1f*3c
B=A;
D=0;
C=[];
p=false; %bandera para metodo burbuja
disp ("Seleccione que tipo de orednamiento desea:");
n=input("Ordenamiento ascendente [1] \nOrdenamiento desdendente [2]: ");
    while p==false
        p=true;
        for i=1:length (A)-1
           if A(i)>A(i+1);
               D=A(i)
               A(i)=A(i+1);
               A(i+1)=D;
               p=false;
           end
        end
    end
disp ("números aleatorios generados")
disp (B);
C(3)=A(1);
C(2)=A(2);
C(1)=A(3);
switch n
    case 1
        disp ("números aleatorios en orden ascendente");
        disp (A);
    case 2
        disp ("números aleatorios en orden ascendente");
        disp (C);
end