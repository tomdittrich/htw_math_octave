function Aufgabe10_01
aufgabe01();
endfunction

function y = f(x)
  y = (9 - x).^2;
endfunction

function aufgabe01
	disp("Aufgabe 1");
	x = [0:0.5:9];
  
% die Wahrscheinlichkeit, dass eine stetige Zufallsvariable X
% einen bestimmten Wert x annimmt, ist stets Null
% Grund dafür ist, dass die Fläche über einem Punkt x gleich Null ist
  
	% a)
	disp("a)");
	q = quad (@f, 0, 9) % Integral von 0 bis 9
	c = 1/q % weil Fläche unter Dichtefunktion 1 ist (c*integral=1), 100%
	disp("")
	
	% b)	
  disp("b)");
  G = c * (81 * x -9 * x.^2 + 1 / 3 * x.^3); % Verteilungsfkt, Kubische Para.

	% c) siehe Plot
  
  % Ableitung von G ist g
	disp("c)");
  disp("siehe Plot");
	subplot(1,2,2), plot(x, G), title('01b) Verteilungsfkt.'), axis([0 9 0 1])
	disp("");
  % das Integral der Dichtefunktion ist die Verteilungsfunktion.
  % Verteilungsfunktionen der Zufallsvariable x werden F(x) gekennzeichnet. Sie geben an, wie groß die Wahrscheinlichkeit ist, 
  % dass die Zufallsvariable einen Wert gleich oder kleiner als x annimmt. Verteilungsfunktionen müssen Werte zwischen 0 und 1 annehmen
  
  g = c*(9 - x).^2;
	subplot(1,2,1), plot(x, g), title('01c) Dichtefkt.'), axis([0 9 0 1])
  % Wahrscheinlichkeit entspricht der Fläche unter der Dichtefkt

	% d)
	disp("d)");
  % Erwartungswert (Papula3 S. 337 unten)
	erwartungw = quad(@(x) x*c*(9-x)^2,0,9)
  
  % Standardabweichung (Papula3 S. 344f)
  % die Varianz beschreibt die erwartete quadratische Abweichung der Zufallsvariablen von ihrem Erwartungswert
  % da Quadrat Stunden keine vergleichbare Einheit ist, wird die Standardabweichung heran gezogen
  % Maß dafür, wie stark im Mittel die Zufallsgröße von ihrem Erwartungswert streut
	varianz = quad(@(x) (x-erwartungw)^2*c*(9-x)^2,0,9)
	standabweichung = sqrt(varianz)
	disp("");

	% e)
	disp("e)");
	ErwartungswertRechnung = 30 + (erwartungw * 80)
	StandardabweichungRechnung = 80 * standabweichung
	disp("");
	disp("");
  endfunction