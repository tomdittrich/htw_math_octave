% https://lp.uni-goettingen.de/get/text/5826
% http://mathworld.wolfram.com/NormalEquation.html
% http://www.lauradhamilton.com/tutorial-linear-regression-with-octave

disp("Aufgabe 2)");
x_i = [ 1.3, 2.2, 2.9, 3.1, 4.5, 5.7, 7.1, 8.0, 8.7, 8.9, 9.3, 9.9 ]';
y_i = [ 1.3, 1.0, 0.85, 0.80, 0.33, 0, -0.4, -0.7, -0.9, -1.0, -1.1, -1.2 ]';

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

x_intervall = [0:0.1:10.5]; % X Intervall bis 50
f = x_i.* p(2) + p(1) % Funktion mit den X Werten, Y Werte als Ergebnis
f = x_intervall.* p(2) + p(1); % Funktion mit der Funktion im Intervall
hold on
plot(x_intervall, f)
hold off

disp("");