angle=[0,0,0];
o=1;
while (o==1)
decimalAngle=input("ingrese ángulo: ");
angle(1)=fix(decimalAngle);
m=(decimalAngle-angle(1))*60;
angle(2)=fix(m);
disp("minutos: "+angle(2));
angle(3)=(m-angle(2))*60;
disp("grados: "+angle(1));
disp("minutos: "+angle(2));
disp("segundos: "+angle(3));
disp("vector: "+angle);
o=input("presione 1 para ingresar otro angulo u otro número para cerrar: ");
end

