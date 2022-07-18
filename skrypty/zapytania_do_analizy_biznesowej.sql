-- Zdanie pokazuje klientów, które na wypożyczenia wydały więcej niż średnia wszystkich
-- wypożyczeni
SELECT "Klient", "Ilosc wypozyczonych plyt", "Laczny koszt wypozyczen"
FROM klient_statystyka
WHERE "Laczny koszt wypozyczen" > (SELECT AVG("Laczny koszt wypozyczen")
                                   FROM klient_statystyka);


-- Zdanie pokazuje 5 wydawców, których gry są najczęściej wypożyczane
SELECT ROWNUM, nazwa AS wydawca, zal AS Zalozyciel
FROM (SELECT wydawca.nr_wydawcy, nazwa,imie_zalozyciela||' '||nazwisko_zalozyciela AS zal,
             COUNT(gra.nr_plyty) AS ilosc
      FROM wydawca
               JOIN wydawnictwo ON wydawca.nr_wydawcy = wydawnictwo.nr_wydawcy
               JOIN gra ON wydawnictwo.nr_plyty = gra.nr_plyty
               JOIN pakiet ON gra.nr_plyty = pakiet.nr_plyty
      GROUP BY wydawca.nr_wydawcy,nazwa, imie_zalozyciela, nazwisko_zalozyciela
      ORDER BY ilosc) wyp
WHERE ROWNUM <= 5;


-- Zdanie pokazuje platformy, w których ilość dostępnych gier jest większa niż średnia
-- wszystkich platform, w których wydano gry
SELECT platforma.nazwa, COUNT(nr_plyty) AS gra
FROM platforma
         JOIN gra ON platforma.nr_platformy = gra.nr_platformy
HAVING COUNT(nr_plyty) >= (SELECT AVG(ile)
                           FROM (SELECT platforma.nr_platformy, count(nr_plyty) AS ile
                                 FROM platforma
                                          JOIN gra ON platforma.nr_platformy = gra.nr_platformy
                                 GROUP BY platforma.nr_platformy) )
    GROUP BY platforma.nazwa
ORDER BY gra DESC;