
%modulador PM
Vp=10;
V_fi=pi();
Fm=70000;
Fp=90000;
F_fi=8000;
Wm=2*3.1416*Fm;
Wp=2*3.1416*Fp;
W_fi=2*pi()*F_fi;
t=0:1e-7:3e-4;
Vm_t=sin(Wm*t);
%%Vp_t=Vp*cos(Wp*t);
Delta_fi=V_fi*((square(W_fi*t)+1)/2);
Fi_t=Vm_t.*Delta_fi;
Angulo=Wp*t+Fi_t;
V_t=Vp*cos(Angulo);
 
figure(1)
subplot (5,1,1), plot (t,Vm_t),title('Señal en el tiempo')
subplot (5,1,2), plot (t,Delta_fi),title('Delta de fi Modulador')
subplot (5,1,3), plot (t,Fi_t),title('fi de t')
subplot (5,1,4), plot (t,Angulo),title('angle')
subplot (5,1,5), plot (t,V_t),title('PM')

