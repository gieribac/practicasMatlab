amplitudes {12.24 6.4 1.84 6.4 12.24};
frecuencias {27970000 21985000 22000000 22015000 22030000};
figure (1);
xlabel("Hz");
ylabel("Voltios");
stem (frecuencias, amplitudes);
xlim([27900000 22037000]);