SELECT Sum(Skelp.cena) FROM Gry
INNER JOIN Sklep ON Gry.id_gry = Sklep.id_gry
WHERE promocja = TRUE
WHERE Gry.kategoria = 'logiczna'
