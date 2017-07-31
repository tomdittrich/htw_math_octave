clear all; clc;
% Uebungsblatt 12  Aufgabe 4
function y = ErwWertFunction(x,n)
  y = x.*n;
endfunction

function y = EntropyFunction(u)
  y = u.*log2(u);
endfunction

disp("")
disp("Aufgabe 4:")
disp("b)")

Wahrsch4 = [ 0.30 0.28 0.12 0.12 0.10 0.08 ];

T4 = [ 0.6 0.35 0.03 0.02 0 0;
       0.1 0.45 0.2 0.15 0.1 0;
       0.1 0.15 0.5 0.15 0.05 0.05;
       0 0.05 0.15 0.6 0.15 0.05;
       0 0 0.07 0.18 0.55 0.2;
       0 0 0.08 0.12 0.25 0.55;];

VerteilungXY4 = T4.*Wahrsch4'

disp("a)")
VerteilungZGy4 = sum(VerteilungXY4, 1)

disp("c)")
Qtmp4 =  VerteilungXY4 ./ VerteilungZGy4;
Q4 = Qtmp4'

disp("d)")

% Erwartungswert X ("Gesendet")
EntropyX4 = -sum(EntropyFunction(Wahrsch4))

ErwXY4_Z1 = -((EntropyFunction(Q4(1,1)))+(EntropyFunction(Q4(1,2)))+(EntropyFunction(Q4(1,3))));
ErwXY4_Z2 = -((EntropyFunction(Q4(2,1)))+(EntropyFunction(Q4(2,2)))+(EntropyFunction(Q4(2,3)))+(EntropyFunction(Q4(2,4))));
ErwXY4_Z3 = -((EntropyFunction(Q4(3,1)))+(EntropyFunction(Q4(3,2)))+(EntropyFunction(Q4(3,3)))+(EntropyFunction(Q4(3,4)))+(EntropyFunction(Q4(3,5)))+(EntropyFunction(Q4(3,6))));
ErwXY4_Z4 = -((EntropyFunction(Q4(4,1)))+(EntropyFunction(Q4(4,2)))+(EntropyFunction(Q4(4,3)))+(EntropyFunction(Q4(4,4)))+(EntropyFunction(Q4(4,5)))+(EntropyFunction(Q4(4,6))));
ErwXY4_Z5 = -((EntropyFunction(Q4(5,2)))+(EntropyFunction(Q4(5,3)))+(EntropyFunction(Q4(5,4)))+(EntropyFunction(Q4(5,5)))+(EntropyFunction(Q4(5,6))));
ErwXY4_Z6 = -((EntropyFunction(Q4(6,3)))+(EntropyFunction(Q4(6,4)))+(EntropyFunction(Q4(6,5)))+(EntropyFunction(Q4(6,6))));

% Erwartungswert X unter der Bedingung Y (Infoverlust)
ErwXY4 = ErwXY4_Z1*VerteilungZGy4(1) + ErwXY4_Z2*VerteilungZGy4(2) + ErwXY4_Z3*VerteilungZGy4(3) + ErwXY4_Z4*VerteilungZGy4(4) + ErwXY4_Z5*VerteilungZGy4(5) + ErwXY4_Z6*VerteilungZGy4(6)

% Info-Gehalt
InfoXY4 = EntropyX4 - ErwXY4