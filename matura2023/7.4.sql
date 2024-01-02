--For <=19
SELECT gry.nazwa, COUNT(oceny.ocena) FROM gracze
INNER JOIN oceny ON gracze.id_gracza = oceny.id_gracza
INNER JOIN gry ON oceny.id_gry = gry.id_gry

WHERE wiek <= 19
GROUP BY gry.nazwa
ORDER BY COUNT(oceny.ocena) DESC

--For >19 and <50
SELECT gry.nazwa, COUNT(oceny.ocena) FROM gracze
INNER JOIN oceny ON gracze.id_gracza = oceny.id_gracza
INNER JOIN gry ON oceny.id_gry = gry.id_gry

WHERE wiek BETWEEN 20 AND 49
GROUP BY gry.nazwa
ORDER BY COUNT(oceny.ocena) DESC

--For > 49
SELECT gry.nazwa, COUNT(oceny.ocena) FROM gracze
INNER JOIN oceny ON gracze.id_gracza = oceny.id_gracza
INNER JOIN gry ON oceny.id_gry = gry.id_gry

WHERE wiek > 50
GROUP BY gry.nazwa
ORDER BY COUNT(oceny.ocena) DESC

