clear all; clc;
% Uebungsblatt 12  Aufgabe 3
function y = ErwWertFunction(x,n)
  y = x.*n;
endfunction

function y = EntropyFunction(u)
  y = u.*log2(u);
endfunction

disp("")
disp("Aufgabe 3:")
disp("b)")

Wahrsch3 = [ 0.1 0.2 0.3 0.4 ];

T3 = [0.5 0 0.5; 
      0.2 0.4 0.4; 
      0.5 0.25 0.25; 
      0 0.5 0.5];      
VerteilungXY3 = T3.*Wahrsch3' %transponiert
% pi * pj
% Matrix der zweidim. Verteilung, hat die Randverteilung von X und Y

disp("a)")
% Randverteilung von Y
VerteilungZGy3 = sum(VerteilungXY3, 1)

disp("c)")
Qtmp3 =  VerteilungXY3 ./ VerteilungZGy3;
Q3 = Qtmp3' % transponiert
% MAtrix der bed. Wahrscheinlichkeit

disp("d)")

disp("Erwartungswert X (Gesendet)")
EntropyX3 = -sum(EntropyFunction(Wahrsch3))
disp("")

% Erwartungswerte X|Y berechnen
%-((Q3(1,1)*log2(Q3(1,1)))+(Q3(1,2)*log2(Q3(1,2)))+(Q3(1,3)*log2(Q3(1,3))))

ErwXY3_Z1 = -((EntropyFunction(Q3(1,1)))+(EntropyFunction(Q3(1,2)))+(EntropyFunction(Q3(1,3))));
ErwXY3_Z2 = -((EntropyFunction(Q3(2,2)))+(EntropyFunction(Q3(2,3)))+(EntropyFunction(Q3(2,4))));
ErwXY3_Z3 = -((EntropyFunction(Q3(3,1)))+(EntropyFunction(Q3(3,2)))+(EntropyFunction(Q3(3,3)))+(EntropyFunction(Q3(3,4))));

disp("Erwartungswert X unter der Bedingung Y (Infoverlust)")
ErwXY3 = ErwXY3_Z1*VerteilungZGy3(1) + ErwXY3_Z2*VerteilungZGy3(2) + ErwXY3_Z3*VerteilungZGy3(3)
disp("")

disp("Info-Gehalt:")
InfoXY3 = EntropyX3 - ErwXY3
% viel, weil vierter Wert fehlt
