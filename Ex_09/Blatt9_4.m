% Binomial Verteilung
% Papula S.356

p0 = nchoosek(5, 0) * (1/3)^0 * (1-(1/3))^(5-0)
p1 = nchoosek(5, 1) * (1/3)^1 * (1-(1/3))^(5-1)
p2 = nchoosek(5, 2) * (1/3)^2 * (1-(1/3))^(5-2)
p3 = nchoosek(5, 3) * (1/3)^3 * (1-(1/3))^(5-3)
p4 = nchoosek(5, 4) * (1/3)^4 * (1-(1/3))^(5-4)
p5 = nchoosek(5, 5) * (1/3)^5 * (1-(1/3))^(5-5)

x = [0:5];
f = [p0 p1 p2 p3 p4 p5];
bar(x, f)