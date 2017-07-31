% Fakultät von 5
% f5 = factorial(5)
% Wahrscheinlichkeitsfunktionen von diskreten Zufallsgrößen 
% können in einem Balkendiagramm (Stabdiagramm) dargestellt werden
%x=[0:3];
%f=[0.1 0.25 0.5 0.15];
%bar(x,f)

% Übergabe an P function (Hypergeometrische Verteilung)
% Ohne Zurücklegen
% Seite 13b im Hefter
x1 = P(0); 
x2 = P(1);
x3 = P(2);
x4 = P(3);
x5 = P(4);
x6 = P(5);

x=[0:5];
f=[x1 x2 x3 x4 x5 x6];
bar(x,f)