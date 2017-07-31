disp("Aufgabe 3:");

n = 10; % Umfang der Stichprobe = 10

% die gesuchte Konstante/Schranke c ist das Quantil u0,975 = 1,96 der Standardnormalverteiling
c3 = 1.96 % Tabelle S.742, Konstante nach S.523
Var = 4; % gegebene Varianz = 4
SAbwe = sqrt(Var)
Mittel = (10 + 8 + 9 + 10 + 11 + 11 + 9 + 12 + 8 + 12) / n
k = (c3*SAbwe)/sqrt(Mittel)

UntereSchranke = Mittel - k
ObereSchranke = Mittel + k
Laenge = ObereSchranke-UntereSchranke