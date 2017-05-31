%8_3_a
disp("Aufgabe A")
a_polynom = [1 0 0 0 0 0 -1 0];
a_nullstellen = roots(a_polynom)
figure(1),compass(a_nullstellen)

%8_3_b
disp("Aufgabe B")
b_polynom = [1 1 1 1 1 1];
b_nullstellen = roots(b_polynom)
figure(2),compass(b_nullstellen)

%8_3_c
disp("Aufgabe C")
c_polynom = [1 0 0 -j];
c_nullstellen = roots(c_polynom)
figure(3),compass(c_nullstellen)