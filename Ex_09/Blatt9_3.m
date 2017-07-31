% Binomial Verteilung

n1 = 250;
n2 = 500;
n3 = 1000;
n4 = 2000;

% Ausschlußanteil
p = 0.02;

% Erwartungswert
m1 = n1 * p
m2 = n2 * p
m3 = n3 * p
m4 = n4 * p

% Standardabweichung
b1 = sqrt(m1 * (1-p))
b2 = sqrt(m2 * (1-p))
b3 = sqrt(m3 * (1-p))
b4 = sqrt(m4 * (1-p))

% Wenn ich den Erwartungswert nehme +/- mit 
% 3mal der Abweichung, kommt Intervall raus
% in dem die Ergebnisse liegen (zu 99%)
% 3 Sigma Rechner