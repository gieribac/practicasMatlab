%este codigo resuelve un circuito resistivo por método de mallas con
%sentido dextrógiro
disp("Se resolvera un circuito resistivo");
mallas=input("Escriba la cantidad de mallas del circuito: ");
Vector_voltajes=zeros(mallas,1);
ramas=input("escriba la cantidad de ramas compartidas entre mallas del circuito: ");
Vector_corrientes=zeros(ramas+mallas,1);
Vector_resistores=Vector_corrientes;
Vector_tensiones=Vector_corrientes;
Vector_potencias=Vector_corrientes;
Matriz_resistores=zeros(mallas,mallas);
Respuestas=zeros(length(Vector_corrientes),4);
for i=1:mallas
    Vector_voltajes(i,1)=input("ingrese el valor de la fuente de voltaje de la malla "+i+": ");
    disp("Se pediran las resistencias de la malla "+i);
    for j=i:mallas
        if i ~= j
           Matriz_resistores(i,j)=-1*input("ingrese el valor de la suma de las resistencias de malla compartidas con la malla "+j+": ");
           Matriz_resistores(j,i)=Matriz_resistores(i,j);
        else 
           Matriz_resistores(i,j)=input("ingrese el valor de la suma de las resistencias de malla: ");
        end
    end
end
disp(Matriz_resistores);
disp(Vector_voltajes);
Corrientes_malla=inv(Matriz_resistores)*Vector_voltajes;
for i=1:mallas
disp("El valor de la corriente de malla "+i+" es de "+Corrientes_malla(i,1)+" A");
end
for  i=1:mallas
    Vector_corrientes(i,1)=Corrientes_malla(i,1);
    Vector_resistores(i,1)=input("escriba el valor de la suma de los resistores exclusivos de la malla "+i+": ");
end
for i=mallas+1:length(Vector_corrientes)
    disp("ubique una rama compartida entre mallas");
    Vector_resistores(i,1)=input("escriba el valor de suma de resistencias de la rama: ");
    o=input("seleccione la corriente de la malla de la derecha/abajo [1][2][3]...: ");
    corriente_a=Corrientes_malla(o,1);
    o=input("seleccione la corriente de la malla izquierda/arriba [1][2][3]...: ");
    corriente_b=Corrientes_malla(o,1);
    Vector_corrientes(i,1)=corriente_a-corriente_b;
end

for  i=1:length(Vector_corrientes)
    Vector_tensiones(i,1)=Vector_corrientes(i,1)*Vector_resistores(i,1);
    Vector_potencias(i,1)=abs(Vector_corrientes(i,1)*Vector_tensiones(i,1));
end
for i=1:length(Vector_corrientes);
    Respuestas(i,1)=Vector_resistores(i,1);
    Respuestas(i,2)=1000*Vector_corrientes(i,1);
    Respuestas(i,3)=Vector_tensiones(i,1);
    Respuestas(i,4)=1000*Vector_potencias(i,1);
end
Titulos=["Resistencia" "Corriente" "Tension" "Potencia"]
Respuestas