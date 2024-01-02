SELECT COUNT(DISTINCT id_gracza) FROM gracze
WHERE id_gracza NOT IN (
    SELECT DISTINCT id_gracza
    FROM oceny
    WHERE stan = 'posiada'
) AND id_gracza IN (
    SELECT DISTINCT id_gracza
    FROM oceny
);
