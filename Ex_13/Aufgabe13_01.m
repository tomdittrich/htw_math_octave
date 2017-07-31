% https://lp.uni-goettingen.de/get/text/5826
% http://mathworld.wolfram.com/NormalEquation.html
% http://www.lauradhamilton.com/tutorial-linear-regression-with-octave
% Teschl, S.215

disp("Aufgabe 1)");
x_i = [ 10.6, 14, 18.1, 23.2, 25, 26.4, 30.5, 32.5, 36.6, 40.1 ]';
y_i = [ 8.6, 11.5, 12.4, 15.6, 15.1, 17.7, 18.9, 18.6, 21.3, 24.3 ]';

n = size(x_i); % Größe vom X Vektor (10 Werte, 1 Spalte)

A = ones(n, 2); % 10 Zeilen, 2 Spalten, 1. Spalte beinhaltet 1en
A(:,2) = x_i; % in 2. Spalte kommen die x_i Werte

p = A \ y_i % Punkt 6, Orthogonalisierung nach Householder (QR Zerlegung der Matrix)
% theta = (pinv(X'*X))*X'*y
a = p(1)
b = p(2)

plot(x_i, y_i, 'rx', 'Markersize', 8)
% r = rot
% x = cross
% Markersize 8, wie groß die Kreuze sind

x_intervall = [0:0.1:50]; % X Intervall bis 50
% Regressionsgerade/Ausgleichsgerade
f = x_i.* p(2) + p(1) % Funktion mit den X Werten, Y Werte als Ergebnis
f = x_intervall.* p(2) + p(1); % Funktion mit der Funktion im Intervall
hold on
plot(x_intervall, f)
hold off

disp("");