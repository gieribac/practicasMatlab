x=-1000:50:1000;
y=x.^2;
z=x.^3;
subplot (1,2,1);
plot(x,y,"-*r");
xlabel("x")
ylabel("𝑥^2")
grid on;
title("Función: y=𝑥^2 ; x=-1000:50:1000;");
subplot (1,2,2);
plot(x,z,":b");
xlabel("x")
ylabel("x^3")
grid on;
title("Función: z=x^3; x=-1000:20:1000");

if t=={'cuadrado de x'}
    plot (handles.axes1,x,x.^2);
else if t=={'cubo de x'}
    plot (handles.axes1,x,x.^3);
    end