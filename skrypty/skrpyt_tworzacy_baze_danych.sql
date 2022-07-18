CREATE TABLE filia
(
    nr_filii NUMBER(1) NOT NULL,
    adres VARCHAR2(45) NOT NULL
);
CREATE TABLE gra
(
    nr_plyty NUMBER(3) NOT NULL,
    tytul VARCHAR2(40 CHAR) NOT NULL,
    pegi VARCHAR2(2 CHAR),
    nr_platformy NUMBER(3) NOT NULL,
    nr_filii NUMBER(1) NOT NULL,
    koszt_wypozyczenia NUMBER(2) NOT NULL
);
CREATE TABLE platforma
(
    nr_platformy NUMBER(3) NOT NULL,
    nazwa VARCHAR2(15) NOT NULL
);
CREATE TABLE klient
(
    nr_klienta NUMBER(2) NOT NULL,
    imie VARCHAR2(20) NOT NULL,
    nazwisko VARCHAR2(25) NOT NULL,
    data_zalozenia_karty DATE NOT NULL,
    pesel VARCHAR2(11 CHAR) NOT NULL
);
CREATE TABLE pakiet
(
    nr_wypozyczenia NUMBER(4) NOT NULL,
    nr_plyty NUMBER(3) NOT NULL
);
CREATE TABLE pracownik
(
    nr_pracownika NUMBER(2) NOT NULL,
    imie VARCHAR2(20) NOT NULL,
    nazwisko VARCHAR2(25) NOT NULL,
    pesel VARCHAR2(11 CHAR) NOT NULL,
    nr_telefonu VARCHAR2(11 CHAR) NOT NULL,
    data_podpisania_umowy DATE NOT NULL,
    termin_wygasniecia_umowy DATE NOT NULL,
    miesieczna_pensja NUMBER(4) NOT NULL
);
CREATE TABLE wydawca
(
    nr_wydawcy NUMBER(2) NOT NULL,
    nazwa VARCHAR2(30) NOT NULL,
    imie_zalozyciela VARCHAR2(20) NOT NULL,
    nazwisko_zalozyciela VARCHAR2(25 CHAR) NOT NULL,
    kraj_pochodzenia VARCHAR2(20 CHAR),
    data_zalozenia DATE NOT NULL
);
CREATE TABLE wydawnictwo
(
    nr_plyty NUMBER(3) NOT NULL,
    nr_wydawcy NUMBER(2) NOT NULL
);
CREATE TABLE wypozyczenie
(
    nr_wypozyczenia NUMBER(4) NOT NULL,
    data_wypozyczenia DATE NOT NULL,
    termin_oddania DATE NOT NULL,
    nr_klienta NUMBER(2) NOT NULL,
    nr_pracownika NUMBER(2) NOT NULL
);
ALTER TABLE filia ADD CONSTRAINT filia_pk PRIMARY KEY ( nr_filii );
ALTER TABLE gra ADD CONSTRAINT gra_pk PRIMARY KEY ( nr_plyty );
ALTER TABLE platforma ADD CONSTRAINT platforma_pk PRIMARY KEY ( nr_platformy );
ALTER TABLE klient ADD CONSTRAINT klient_pk PRIMARY KEY ( nr_klienta );
ALTER TABLE pakiet ADD CONSTRAINT relation_4_pk PRIMARY KEY ( nr_wypozyczenia,
                                                              nr_plyty );
ALTER TABLE pracownik ADD CONSTRAINT pracownik_pk PRIMARY KEY ( nr_pracownika );
ALTER TABLE wydawca ADD CONSTRAINT wydawca_pk PRIMARY KEY ( nr_wydawcy );
ALTER TABLE wydawnictwo ADD CONSTRAINT relation_1_pk PRIMARY KEY ( nr_plyty,
                                                                   nr_wydawcy );
ALTER TABLE wypozyczenie ADD CONSTRAINT wypozyczenie_pk PRIMARY KEY ( nr_wypozyczenia
    );
ALTER TABLE gra
    ADD CONSTRAINT gra_filia_fk FOREIGN KEY ( nr_filii )
        REFERENCES filia ( nr_filii );
ALTER TABLE gra
    ADD CONSTRAINT gra_platforma_fk FOREIGN KEY ( nr_platformy )
        REFERENCES platforma ( nr_platformy );
ALTER TABLE wydawnictwo
    ADD CONSTRAINT relation_1_gra_fk FOREIGN KEY ( nr_plyty )
        REFERENCES gra ( nr_plyty );
ALTER TABLE wydawnictwo
    ADD CONSTRAINT relation_1_wydawca_fk FOREIGN KEY ( nr_wydawcy )
        REFERENCES wydawca ( nr_wydawcy );
ALTER TABLE pakiet
    ADD CONSTRAINT relation_4_gra_fk FOREIGN KEY ( nr_plyty )
        REFERENCES gra ( nr_plyty );
ALTER TABLE pakiet
    ADD CONSTRAINT relation_4_wypozyczenie_fk FOREIGN KEY ( nr_wypozyczenia )
        REFERENCES wypozyczenie ( nr_wypozyczenia );
ALTER TABLE wypozyczenie
    ADD CONSTRAINT wypozyczenie_klient_fk FOREIGN KEY ( nr_klienta )
        REFERENCES klient ( nr_klienta );
ALTER TABLE wypozyczenie
    ADD CONSTRAINT wypozyczenie_pracownik_fk FOREIGN KEY ( nr_pracownika )
        REFERENCES pracownik ( nr_pracownika );
CREATE SEQUENCE seq_nr_klienta;
CREATE SEQUENCE seq_nr_gry;
CREATE SEQUENCE seq_nr_wydawcy;
CREATE SEQUENCE seq_nr_wypozyczenia;
CREATE OR REPLACE FORCE VIEW klient_statystyka AS
SELECT imie ||' '|| nazwisko AS "Klient", COUNT(wypozyczenie.nr_klienta) AS "Ilosc wypozyczonych plyt",
       SUM(gra.koszt_wypozyczenia) AS "Laczny koszt wypozyczen"
FROM wypozyczenie
         JOIN klient ON wypozyczenie.nr_klienta = klient.nr_klienta
         JOIN pakiet ON wypozyczenie.nr_wypozyczenia = pakiet.nr_wypozyczenia
         JOIN gra ON pakiet.nr_plyty = gra.nr_plyty
GROUP BY imie, nazwisko
ORDER BY "Ilosc wypozyczonych plyt" DESC;
CREATE OR REPLACE FORCE VIEW grupy_wiekowe AS
SELECT Grupa_wiekowa AS "Grupa wiekowa", COUNT(*) AS "Ile wypozyczen"
FROM (SELECT ' -19' AS Grupa_wiekowa, W.nr_klienta AS NR
      FROM(SELECT (CASE
                       WHEN SUBSTR(pesel, 3, 1) >1 THEN '20'
                       ELSE '19'
          END
                      ) || ''|| substr(pesel,1,2) AS Rok, nr_klienta
           FROM klient) W
      WHERE (EXTRACT(YEAR FROM SYSDATE) - Rok) < 20
      UNION
      SELECT '20-29', W.nr_klienta
      FROM(SELECT (CASE
                       WHEN SUBSTR(pesel, 3, 1) >1 THEN '20'
                       ELSE '19'
          END
                      ) || ''|| substr(pesel,1,2) AS Rok, nr_klienta
           FROM klient) W
      WHERE (EXTRACT(YEAR FROM SYSDATE) - Rok) BETWEEN 20 AND 29
      UNION
      SELECT '30-39', W.nr_klienta
      FROM(SELECT (CASE
                       WHEN SUBSTR(pesel, 3, 1) >1 THEN '20'
                       ELSE '19'
          END
                      ) || ''|| substr(pesel,1,2) AS Rok, nr_klienta
           FROM klient) W
      WHERE (EXTRACT(YEAR FROM SYSDATE) - Rok) BETWEEN 30 AND 39
      UNION
      SELECT '40-49', W.nr_klienta
      FROM(SELECT (CASE
                       WHEN SUBSTR(pesel, 3, 1) >1 THEN '20'
                       ELSE '19'
          END
                      ) || ''|| substr(pesel,1,2) AS Rok, nr_klienta
           FROM klient) W
      WHERE (EXTRACT(YEAR FROM SYSDATE) - Rok) BETWEEN 40 AND 49
      UNION
      SELECT '50-59', W.nr_klienta
      FROM(SELECT (CASE
                       WHEN SUBSTR(pesel, 3, 1) >1 THEN '20'
                       ELSE '19'
          END
                      ) || ''|| substr(pesel,1,2) AS Rok, nr_klienta
           FROM klient) W
      WHERE (EXTRACT(YEAR FROM SYSDATE) - Rok) BETWEEN 50 AND 59
      UNION
      SELECT '60-69', W.nr_klienta
      FROM(SELECT (CASE
                       WHEN SUBSTR(pesel, 3, 1) >1 THEN '20'
                       ELSE '19'
          END
                      ) || ''|| substr(pesel,1,2) AS Rok, nr_klienta
           FROM klient) W
      WHERE (EXTRACT(YEAR FROM SYSDATE) - Rok) BETWEEN 60 AND 69
      UNION
      SELECT '70-', W.nr_klienta
      FROM(SELECT (CASE
                       WHEN SUBSTR(pesel, 3, 1) >1 THEN '20'
                       ELSE '19'
          END
                      ) || ''|| substr(pesel,1,2) AS Rok, nr_klienta
           FROM klient) W
      WHERE (EXTRACT(YEAR FROM SYSDATE) - Rok) > 69
     ) grupy_ile
         JOIN wypozyczenie ON grupy_ile.NR = wypozyczenie.nr_klienta
GROUP BY Grupa_wiekowa
ORDER BY Grupa_wiekowa;
CREATE OR REPLACE FORCE VIEW lata_statystyka AS
SELECT zyski.Rok AS Rok, Zarobek AS "Roczny przychod", Nowi_suma AS "Nowi klienci", ile.wyp as
                    "Ilosc wypozyczen"
FROM (SELECT Rok, SUM(Pieniadze) as Zarobek
      FROM (SELECT EXTRACT(YEAR FROM data_wypozyczenia) AS Rok, SUM(koszt_wypozyczenia) AS
                                                           Pieniadze
            FROM wypozyczenie
                     JOIN pakiet ON wypozyczenie.nr_wypozyczenia = pakiet.nr_wypozyczenia
                     JOIN gra ON pakiet.nr_plyty = gra.nr_plyty
            GROUP BY data_wypozyczenia
           )
      GROUP BY Rok) zyski,
     (SELECT Rok, SUM(nowi) as Nowi_suma
      FROM(SELECT EXTRACT(YEAR FROM data_zalozenia_karty) AS Rok, count(*) as nowi
           FROM klient
           GROUP BY data_zalozenia_karty
          )
      GROUP BY Rok) Nowi,
     (SELECT Rok, COUNT(nr) as Wyp
      FROM (SELECT EXTRACT(YEAR FROM data_wypozyczenia) AS Rok, nr_wypozyczenia as nr
            FROM wypozyczenie
           )
      GROUP BY Rok) ile
WHERE zyski.Rok = Nowi.Rok
  AND zyski.Rok = ile.Rok
ORDER BY Rok;
CREATE OR REPLACE FORCE VIEW pracownik_statystyka AS
SELECT imie ||' '|| nazwisko AS Pracownik, wiek.rok AS Wiek, wypoz.ile_wyp AS "Ile wypozyczonych
plyt", round((round(sysdate - data_podpisania_umowy,0)/wypoz.ile_wyp),0) AS "Co ile dni srednio
wypozycza plyte", round(miesieczna_pensja/wypoz.ile_wyp,2) AS "Stosunek ilosci wypozyczonych
plyt do miesiecznej pensji"
FROM pracownik,
     (SELECT nr_pracownika, EXTRACT(YEAR FROM sysdate)-((CASE
                                                             WHEN substr(pesel, 3,1) >1 THEN '20'
                                                             ELSE '19'
         END)||''|| substr(pesel,1,2)) AS rok
      FROM pracownik) wiek,
     (SELECT pracownik.nr_pracownika AS nr, COUNT (pakiet.nr_wypozyczenia) AS ile_wyp
      FROM pracownik
               JOIN wypozyczenie ON pracownik.nr_pracownika =
                                    wypozyczenie.nr_pracownika
               JOIN pakiet ON wypozyczenie.nr_wypozyczenia = pakiet.nr_wypozyczenia
      GROUP BY pracownik.nr_pracownika) wypoz
WHERE pracownik.nr_pracownika = wiek.nr_pracownika
  AND pracownik.nr_pracownika = wypoz.nr;
COMMIT;