disp("Aufgabe 5:");

Erw = 40000;
Abw = 4310;

disp("");
disp("-- A --");
nach37500 = normcdf(37500, Erw, Abw)

disp("");
disp("-- B --");
mehrAls4500 = 1- normcdf(45000, Erw, Abw)

disp("");
disp("-- C --");
vierMind42000 = (1 - normcdf(42000, Erw, Abw))^4

disp("");
disp("-- D --");
einRadBis38000 = normcdf(38000, Erw, Abw)
vierMind38000 = (1 - normcdf(38000, Erw, Abw))^4

% die W. dass vier Reifen über 38000 kommen, davon das Gegenteil
EinerVonVierKaputtBevor38000 = 1 - (1 - normcdf(38000, Erw, Abw))^4

disp("");
disp("-- E --");
Lebensdauer80P = norminv(0.2, Erw, Abw)

% Gegenprobe mit normcdf
%	i = 0;
%	  while ( normcdf(i, Erw, Abw) <= 0.2)
%		i = i + 3;
%	  endwhile
%	i