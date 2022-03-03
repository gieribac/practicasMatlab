function Sunota()
regn=[];
nota=[];
rege=[];
m=0;
cantp=0;
cantn=0;
cantnn=0;
for i=1:20
    Estudiante="Estudiante "+i+": ";
    nota=input("Ingrese la nota entre 0 y 5 del "+Estudiante);
    regn=[regn, nota];
    rege=[rege, Estudiante];
    if nota>=m
        m=nota;
    end
    if nota>=3
        cantp=cantp+1;
    else
        cantn=cantn+1;
    end
    if nota==0
    cantnn=cantnn+1;
    end
end
    disp(rege'+regn');
    prom=mean(regn);
    disp("Promedio del curso: "+prom);
    disp("Mayor nota: "+m);    
    disp("Cantidad de estudiantes con nota igual o mayor a 3: "+cantp);
    disp("Cantidad de estudiantes con nota menor o igual 2.9: "+cantn);
    disp("Cantidad de estudiantes con nota de 0: "+cantnn);
    
    
    
end
    