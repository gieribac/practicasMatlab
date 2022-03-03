
r=input("ingrese el valor de su resistor, ingrese números: ");
c=input ("ingrese si quiere su conversión a miliohmios [m] o megaohmios [M]: ","s");
res=resistencias(r,c);
fprintf('el valor del resistor es de: %g%cΩ\n ',res,c);




