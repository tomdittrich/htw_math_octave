disp("Aufgabe 4:");

% Normalverteilung
% (kumultative) Verteilungsfunktion
% gibt die Wahrscheinlichkeit dafür an, dass die Zufallsvariable X höchstens den Wert x annimmt
% Die Wahrscheinlichkeit, dass eine stetige Zufallsvariable X einen bestimmten Wert x annimmt, ist stets Null.

Erw = 10000;
Abw = 800;

disp("");
disp("-- A --");
weniger9000 = normcdf(9000, Erw, Abw)

disp("");
disp("-- B --");
zwischen9000Und10500 = normcdf(10500, Erw, Abw) - weniger9000


disp("");
disp("-- C --");
nichtUeber80 = norminv(0.8, Erw, Abw)

% Gegenprobe mit normcdf
%	i = 0;
%	  while ( normcdf(i, Erw, Abw) <= 0.8)
%		i = i + 3;
%	  endwhile
%	i

disp("");
disp("-- D --");
min90 = norminv(0.1, Erw, Abw)

disp("");
disp("-- E --");
mehr9000 = 1 - normcdf(9000, Erw, Abw)
mehr10500 = 1 - normcdf(10500, Erw, Abw) % enthält das Eintreten dass 9000 UND 10500 erreicht sind

% Formel Bedingte Wahrscheinlichkeit: P(A/B) = P(AschnittB) / P(B)
% Der senkrechte Strich wird als "unter der Bedingung" gelesen. Das Ereignis zu der rechten Seite des 
% senkrechten Stiches (in diesem Fall B) ist das, von dem wir wissen, dass es eingetreten ist.
% https://mathebibel.de/bedingte-wahrscheinlichkeit
% http://matheguru.com/stochastik/163-bedingte-wahrscheinlichkeit.html
Danach = mehr10500 / mehr9000

