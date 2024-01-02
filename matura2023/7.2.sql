SELECT gry.nazwa, ROUND(AVG(oceny.ocena),2) AS srednia
FROM gry
INNER JOIN oceny ON gry.id_gry = oceny.id_gry
WHERE gry.kategoria = 'imprezowa'
GROUP BY gry.nazwa
ORDER BY gry.nazwa ASC
