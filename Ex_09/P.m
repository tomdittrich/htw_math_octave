% Hypergeometrische Verteilung
function y = P(x)
  y = ((nchoosek(5, x)) * (nchoosek(15, 5-x))) / (nchoosek(20, 5))
end