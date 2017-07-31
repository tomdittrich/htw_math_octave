% https://lp.uni-goettingen.de/get/text/5826
% http://mathworld.wolfram.com/NormalEquation.html
% http://www.lauradhamilton.com/tutorial-linear-regression-with-octave

disp("Aufgabe 4)");
x_i = [ 0.04, 0.32, 0.51, 0.73, 1.03, 1.42, 1.60 ]';
y_i = [ 2.63, 1.18, 1.16, 1.54, 2.65, 5.41, 7.67 ]';

n = size(x_i); % Größe vom X Vektor (10 Werte, 1 Spalte)

A = ones(n, 2); % 10 Zeilen, 2 Spalten, 1. Spalte beinhaltet 1en
A(:,2) = x_i; % in 2. Spalte kommen die x_i Werte
A(:,3) = x_i.^2; % in 3. Spalte kommen die x^2 Werte

p = A \ y_i % Punkt 6, Orthogonalisierung nach Householder (QR Zerlegung der Matrix)

a = p(1)
b = p(2)
c = p(3)

plot(x_i, y_i, 'rx', 'Markersize', 8)
% r = rot
% x = cross
% Markersize 8, wie groß die Kreuze sind

x_intervall = [0:0.1:2]; % X Intervall bis 50
f = p(3).*x_i.^2 + x_i.* p(2) + p(1); % Funktion mit den X Werten, Y Werte als Ergebnis
f = p(3).*x_intervall.^2 + x_intervall.* p(2) + p(1); % Funktion mit der Funktion im Intervall
hold on
plot(x_intervall, f)
hold off

disp("");