alter
SESSION set NLS_DATE_FORMAT = 'DD/MM/YYYY';
INSERT INTO filia
    (nr_filii, adres)
VALUES (1, 'Piaseczna 5a');
INSERT INTO filia
    (nr_filii, adres)
VALUES (2, 'Łęczna 123');
INSERT INTO filia
    (nr_filii, adres)
VALUES (3, 'Malcanów 3/65');
INSERT INTO platforma (nr_platformy, nazwa)
VALUES (1, 'xbox 360');
INSERT INTO platforma (nr_platformy, nazwa)
VALUES (2, 'xbox one');
INSERT INTO platforma (nr_platformy, nazwa)
VALUES (3, 'xbox series x');
INSERT INTO platforma (nr_platformy, nazwa)
VALUES (4, 'playstation 3');
INSERT INTO platforma (nr_platformy, nazwa)
VALUES (5, 'playstation 4');
INSERT INTO platforma (nr_platformy, nazwa)
VALUES (6, 'playstation 5');
INSERT INTO platforma (nr_platformy, nazwa)
VALUES (7, 'pc');
INSERT INTO gra
    (nr_plyty, tytul, pegi, nr_platformy, nr_filii, koszt_wypozyczenia)
VALUES (seq_nr_gry.nextval, 'Wiedźmin 1', 18, 7, 1, 20);
INSERT INTO gra
    (nr_plyty, tytul, pegi, nr_platformy, nr_filii, koszt_wypozyczenia)
VALUES (seq_nr_gry.nextval, 'Wiedźmin 2', 18, 7, 1, 20);
INSERT INTO gra
    (nr_plyty, tytul, pegi, nr_platformy, nr_filii, koszt_wypozyczenia)
VALUES (seq_nr_gry.nextval, 'Wiedźmin 3', 18, 7, 2, 25);
INSERT INTO gra
    (nr_plyty, tytul, pegi, nr_platformy, nr_filii, koszt_wypozyczenia)
VALUES (seq_nr_gry.nextval, 'Cyberpunk 2077', 18, 6, 2, 50);
INSERT INTO gra
    (nr_plyty, tytul, pegi, nr_platformy, nr_filii, koszt_wypozyczenia)
VALUES (seq_nr_gry.nextval, 'FIFA 22', 3, 3, 2, 40);
INSERT INTO gra
    (nr_plyty, tytul, pegi, nr_platformy, nr_filii, koszt_wypozyczenia)
VALUES (seq_nr_gry.nextval, 'The Sims 4', 12, 5, 3, 15);
INSERT INTO gra
    (nr_plyty, tytul, pegi, nr_platformy, nr_filii, koszt_wypozyczenia)
VALUES (seq_nr_gry.nextval, 'Minecraft', 7, 4, 3, 20);
INSERT INTO gra
    (nr_plyty, tytul, pegi, nr_platformy, nr_filii, koszt_wypozyczenia)
VALUES (seq_nr_gry.nextval, 'Farming Simulator 22', 3, 7, 3, 35);
INSERT INTO gra
    (nr_plyty, tytul, pegi, nr_platformy, nr_filii, koszt_wypozyczenia)
VALUES (seq_nr_gry.nextval, 'Dying Light 2', 18, 2, 3, 50);
INSERT INTO gra
    (nr_plyty, tytul, pegi, nr_platformy, nr_filii, koszt_wypozyczenia)
VALUES (seq_nr_gry.nextval, 'Euro Truck Simulator 2', 7, 7, 1, 15);
INSERT INTO gra
    (nr_plyty, tytul, pegi, nr_platformy, nr_filii, koszt_wypozyczenia)
VALUES (seq_nr_gry.nextval, 'Dying Light', 18, 1, 1, 10);
INSERT INTO gra
    (nr_plyty, tytul, pegi, nr_platformy, nr_filii, koszt_wypozyczenia)
VALUES (seq_nr_gry.nextval, 'The Sims 3', 12, 1, 1, 15);
INSERT INTO gra
    (nr_plyty, tytul, pegi, nr_platformy, nr_filii, koszt_wypozyczenia)
VALUES (seq_nr_gry.nextval, 'Grand Theft Auto V', 18, 5, 2, 30);
INSERT INTO gra
    (nr_plyty, tytul, pegi, nr_platformy, nr_filii, koszt_wypozyczenia)
VALUES (seq_nr_gry.nextval, 'Bus Simulator', 3, 3, 2, 10);
INSERT INTO gra
    (nr_plyty, tytul, pegi, nr_platformy, nr_filii, koszt_wypozyczenia)
VALUES (seq_nr_gry.nextval, 'Star Wars Jedi: Upady zakon', 16, 4, 2, 35);
INSERT INTO gra
    (nr_plyty, tytul, pegi, nr_platformy, nr_filii, koszt_wypozyczenia)
VALUES (seq_nr_gry.nextval, 'Call of Duty 4', 18, 1, 3, 15);
INSERT INTO gra
    (nr_plyty, tytul, pegi, nr_platformy, nr_filii, koszt_wypozyczenia)
VALUES (seq_nr_gry.nextval, 'Age of Empire IV', 16, 6, 3, 25);
INSERT INTO gra
    (nr_plyty, tytul, pegi, nr_platformy, nr_filii, koszt_wypozyczenia)
VALUES (seq_nr_gry.nextval, 'God of War', 18, 2, 3, 25);
INSERT INTO gra
    (nr_plyty, tytul, pegi, nr_platformy, nr_filii, koszt_wypozyczenia)
VALUES (seq_nr_gry.nextval, 'Forza Horizon 5', 7, 3, 1, 45);
INSERT INTO gra
    (nr_plyty, tytul, pegi, nr_platformy, nr_filii, koszt_wypozyczenia)
VALUES (seq_nr_gry.nextval, 'Need for Speed Heat', 7, 6, 2, 30);
INSERT INTO gra
    (nr_plyty, tytul, pegi, nr_platformy, nr_filii, koszt_wypozyczenia)
VALUES (seq_nr_gry.nextval, 'Red Dead Redemption 2', 18, 5, 3, 40);
INSERT INTO wydawca
(nr_wydawcy, nazwa, imie_zalozyciela, nazwisko_zalozyciela, kraj_pochodzenia, data_zalozenia)
VALUES (seq_nr_wydawcy.nextval, 'CD Project', 'Marcin', 'Iwinski', 'Polska', TO_DATE('15/01/1994', 'dd/mm/yyyy'));
INSERT INTO wydawca
(nr_wydawcy, nazwa, imie_zalozyciela, nazwisko_zalozyciela, kraj_pochodzenia, data_zalozenia)
VALUES (seq_nr_wydawcy.nextval, 'Electrinic Arts', 'Trip', 'Hawkins', 'USA', TO_DATE('27/05/1982', 'dd/mm/yyyy'));
INSERT INTO wydawca
(nr_wydawcy, nazwa, imie_zalozyciela, nazwisko_zalozyciela, kraj_pochodzenia, data_zalozenia)
VALUES (seq_nr_wydawcy.nextval, 'Sumo Digital', 'Carl', 'Cavers', 'Wielka Brytania', TO_DATE('01/07/2003',
                                                                                             'dd/mm/yyyy'));
INSERT INTO wydawca
(nr_wydawcy, nazwa, imie_zalozyciela, nazwisko_zalozyciela, kraj_pochodzenia, data_zalozenia)
VALUES (seq_nr_wydawcy.nextval, 'EA Maxis', 'Will', 'Wright', 'USA', TO_DATE('12/03/1997', 'dd/mm/yyyy'));
INSERT INTO wydawca
(nr_wydawcy, nazwa, imie_zalozyciela, nazwisko_zalozyciela, kraj_pochodzenia, data_zalozenia)
VALUES (seq_nr_wydawcy.nextval, 'The Sims studio', 'Max', 'Smith', 'Polska', TO_DATE('22/10/2006',
                                                                                     'dd/mm/yyyy'));
INSERT INTO wydawca
(nr_wydawcy, nazwa, imie_zalozyciela, nazwisko_zalozyciela, kraj_pochodzenia, data_zalozenia)
VALUES (seq_nr_wydawcy.nextval, 'Mojang Studios', 'Markus', 'Persson', 'Szwecja', TO_DATE('07/07/2009',
                                                                                          'dd/mm/yyyy'));
INSERT INTO wydawca
(nr_wydawcy, nazwa, imie_zalozyciela, nazwisko_zalozyciela, kraj_pochodzenia, data_zalozenia)
VALUES (seq_nr_wydawcy.nextval, 'Giants Software Gmbh', 'Peter', 'Gwin', 'Szwajcaria', TO_DATE('07/03/2004',
                                                                                               'dd/mm/yyyy'));
INSERT INTO wydawca
(nr_wydawcy, nazwa, imie_zalozyciela, nazwisko_zalozyciela, kraj_pochodzenia, data_zalozenia)
VALUES (seq_nr_wydawcy.nextval, 'Techland', 'Pawel', 'Marchewka', 'Polska', TO_DATE('27/02/1991',
                                                                                    'dd/mm/yyyy'));
INSERT INTO wydawca
(nr_wydawcy, nazwa, imie_zalozyciela, nazwisko_zalozyciela, kraj_pochodzenia, data_zalozenia)
VALUES (seq_nr_wydawcy.nextval, 'SCS Software', 'Mark', 'Markson', 'Czechy', TO_DATE('04/06/1997',
                                                                                     'dd/mm/yyyy'));
INSERT INTO wydawca
(nr_wydawcy, nazwa, imie_zalozyciela, nazwisko_zalozyciela, kraj_pochodzenia, data_zalozenia)
VALUES (seq_nr_wydawcy.nextval, 'Rockstar Games', 'Dan', 'Houser', 'USA', TO_DATE('11/09/1998', 'dd/mm/yyyy'));
INSERT INTO wydawca
(nr_wydawcy, nazwa, imie_zalozyciela, nazwisko_zalozyciela, kraj_pochodzenia, data_zalozenia)
VALUES (seq_nr_wydawcy.nextval, 'Stillalive Studios', 'Piotr', 'Penar', 'Polska', TO_DATE('15/12/2018',
                                                                                          'dd/mm/yyyy'));
INSERT INTO wydawca
(nr_wydawcy, nazwa, imie_zalozyciela, nazwisko_zalozyciela, kraj_pochodzenia, data_zalozenia)
VALUES (seq_nr_wydawcy.nextval, 'Activision', 'Larry', 'Kaplan', 'USA', TO_DATE('01/10/1979', 'dd/mm/yyyy'));
INSERT INTO wydawca
(nr_wydawcy, nazwa, imie_zalozyciela, nazwisko_zalozyciela, kraj_pochodzenia, data_zalozenia)
VALUES (seq_nr_wydawcy.nextval, 'Xbox Game Studios', 'Bill', 'Gates', 'USA', TO_DATE('18/03/2000',
                                                                                     'dd/mm/yyyy'));
INSERT INTO wydawca
(nr_wydawcy, nazwa, imie_zalozyciela, nazwisko_zalozyciela, kraj_pochodzenia, data_zalozenia)
VALUES (seq_nr_wydawcy.nextval, 'Sony Interactive Entertainment', 'Jim', 'Ryan', 'Japonia', TO_DATE('16/11/1993',
                                                                                                    'dd/mm/yyyy'));
INSERT INTO wydawnictwo
    (nr_plyty, nr_wydawcy)
VALUES (1, 1);
INSERT INTO wydawnictwo
    (nr_plyty, nr_wydawcy)
VALUES (2, 1);
INSERT INTO wydawnictwo
    (nr_plyty, nr_wydawcy)
VALUES (3, 1);
INSERT INTO wydawnictwo
    (nr_plyty, nr_wydawcy)
VALUES (4, 1);
INSERT INTO wydawnictwo
    (nr_plyty, nr_wydawcy)
VALUES (5, 2);
INSERT INTO wydawnictwo
    (nr_plyty, nr_wydawcy)
VALUES (5, 3);
INSERT INTO wydawnictwo
    (nr_plyty, nr_wydawcy)
VALUES (6, 4);
INSERT INTO wydawnictwo
    (nr_plyty, nr_wydawcy)
VALUES (6, 5);
INSERT INTO wydawnictwo
    (nr_plyty, nr_wydawcy)
VALUES (7, 6);
INSERT INTO wydawnictwo
    (nr_plyty, nr_wydawcy)
VALUES (8, 7);
INSERT INTO wydawnictwo
    (nr_plyty, nr_wydawcy)
VALUES (9, 8);
INSERT INTO wydawnictwo
    (nr_plyty, nr_wydawcy)
VALUES (10, 9);
INSERT INTO wydawnictwo
    (nr_plyty, nr_wydawcy)
VALUES (11, 8);
INSERT INTO wydawnictwo
    (nr_plyty, nr_wydawcy)
VALUES (12, 4);
INSERT INTO wydawnictwo
    (nr_plyty, nr_wydawcy)
VALUES (12, 5);
INSERT INTO wydawnictwo
    (nr_plyty, nr_wydawcy)
VALUES (13, 10);
INSERT INTO wydawnictwo
    (nr_plyty, nr_wydawcy)
VALUES (14, 11);
INSERT INTO wydawnictwo
    (nr_plyty, nr_wydawcy)
VALUES (15, 2);
INSERT INTO wydawnictwo
    (nr_plyty, nr_wydawcy)
VALUES (16, 12);
INSERT INTO wydawnictwo
    (nr_plyty, nr_wydawcy)
VALUES (17, 13);
INSERT INTO wydawnictwo
    (nr_plyty, nr_wydawcy)
VALUES (18, 14);
INSERT INTO wydawnictwo
    (nr_plyty, nr_wydawcy)
VALUES (19, 13);
INSERT INTO wydawnictwo
    (nr_plyty, nr_wydawcy)
VALUES (20, 2);
INSERT INTO wydawnictwo
    (nr_plyty, nr_wydawcy)
VALUES (21, 10);
INSERT INTO klient
    (nr_klienta, imie, nazwisko, data_zalozenia_karty, pesel)
VALUES (seq_nr_klienta.nextval, 'Stefan', 'Zyto', '02/01/2018', '01232866271');
INSERT INTO klient
    (nr_klienta, imie, nazwisko, data_zalozenia_karty, pesel)
VALUES (seq_nr_klienta.nextval, 'Florentyna', 'Krzaczewska', '16/02/2018', '75040211724');
INSERT INTO klient
    (nr_klienta, imie, nazwisko, data_zalozenia_karty, pesel)
VALUES (seq_nr_klienta.nextval, 'Hubert', 'Otrebski', '09/04/2018', '05310477612');
INSERT INTO klient
    (nr_klienta, imie, nazwisko, data_zalozenia_karty, pesel)
VALUES (seq_nr_klienta.nextval, 'Aleksandra', 'Wilk', '18/06/2018', '83031645948');
INSERT INTO klient
    (nr_klienta, imie, nazwisko, data_zalozenia_karty, pesel)
VALUES (seq_nr_klienta.nextval, 'Wojciech', 'Suchodolski', '11/07/2018', '62020169394');
INSERT INTO klient
    (nr_klienta, imie, nazwisko, data_zalozenia_karty, pesel)
VALUES (seq_nr_klienta.nextval, 'Horacy', 'Bak', '30/10/2018', '82070299515');
INSERT INTO klient
    (nr_klienta, imie, nazwisko, data_zalozenia_karty, pesel)
VALUES (seq_nr_klienta.nextval, 'Sylwia', 'Siedlecka', '23/09/2018', '58112164827');
INSERT INTO klient
    (nr_klienta, imie, nazwisko, data_zalozenia_karty, pesel)
VALUES (seq_nr_klienta.nextval, 'Tadeusz', 'Morzewski', '26/03/2019', '69070318174');
INSERT INTO klient
    (nr_klienta, imie, nazwisko, data_zalozenia_karty, pesel)
VALUES (seq_nr_klienta.nextval, 'Antonina', 'Wilk', '17/05/2019', '67081478767');
INSERT INTO klient
    (nr_klienta, imie, nazwisko, data_zalozenia_karty, pesel)
VALUES (seq_nr_klienta.nextval, 'Filip', 'Bednarczyk', '10/07/2019', '76100489955');
INSERT INTO klient
    (nr_klienta, imie, nazwisko, data_zalozenia_karty, pesel)
VALUES (seq_nr_klienta.nextval, 'Jerzy', 'Krol', '30/04/2020', '73070788316');
INSERT INTO klient
    (nr_klienta, imie, nazwisko, data_zalozenia_karty, pesel)
VALUES (seq_nr_klienta.nextval, 'Mateusz', 'Skrajny', '08/04/2020', '60062313654');
INSERT INTO klient
    (nr_klienta, imie, nazwisko, data_zalozenia_karty, pesel)
VALUES (seq_nr_klienta.nextval, 'Bozena', 'Pawlak', '23/10/2019', '81122779882');
INSERT INTO klient
    (nr_klienta, imie, nazwisko, data_zalozenia_karty, pesel)
VALUES (seq_nr_klienta.nextval, 'Marianna', 'Wyszynska', '06/09/2021', '06291388868');
INSERT INTO klient
    (nr_klienta, imie, nazwisko, data_zalozenia_karty, pesel)
VALUES (seq_nr_klienta.nextval, 'Rafal', 'Kazimierz', '24/10/2019', '87020268751');
INSERT INTO klient
    (nr_klienta, imie, nazwisko, data_zalozenia_karty, pesel)
VALUES (seq_nr_klienta.nextval, 'Kacper', 'Lesnodorski', '14/02/2020', '72020834992');
INSERT INTO klient
    (nr_klienta, imie, nazwisko, data_zalozenia_karty, pesel)
VALUES (seq_nr_klienta.nextval, 'Daniel', 'Barewicz', '14/05/2020', '80032333693');
INSERT INTO klient
    (nr_klienta, imie, nazwisko, data_zalozenia_karty, pesel)
VALUES (seq_nr_klienta.nextval, 'Renata', 'Pienkowska', '18/05/2020', '96092463985');
INSERT INTO klient
    (nr_klienta, imie, nazwisko, data_zalozenia_karty, pesel)
VALUES (seq_nr_klienta.nextval, 'Krzysztof', 'Kononowicz', '20/06/2020', '76011971291');
INSERT INTO klient
    (nr_klienta, imie, nazwisko, data_zalozenia_karty, pesel)
VALUES (seq_nr_klienta.nextval, 'Patrycja', 'Pawlik', '08/07/2020', '59070474346');
INSERT INTO klient
    (nr_klienta, imie, nazwisko, data_zalozenia_karty, pesel)
VALUES (seq_nr_klienta.nextval, 'Joanna', 'Ostrobramska', '07/08/2020', '03251867528');
INSERT INTO klient
    (nr_klienta, imie, nazwisko, data_zalozenia_karty, pesel)
VALUES (seq_nr_klienta.nextval, 'Marianna', 'Kozlowska', '09/12/2020', '78052578261');
INSERT INTO pracownik
(nr_pracownika, imie, nazwisko, pesel, nr_telefonu, data_podpisania_umowy,
 termin_wygasniecia_umowy, miesieczna_pensja)
VALUES (1, 'Jan', 'Oklinski', '80040694597', 502678395, '01/01/2018', '31/01/2022', 2800);
INSERT INTO pracownik
(nr_pracownika, imie, nazwisko, pesel, nr_telefonu, data_podpisania_umowy,
 termin_wygasniecia_umowy, miesieczna_pensja)
VALUES (2, 'Katarzyna', 'Sledz', '79121143224', 515934950, '01/07/2018', '31/07/2022', 2800);
INSERT INTO pracownik
(nr_pracownika, imie, nazwisko, pesel, nr_telefonu, data_podpisania_umowy,
 termin_wygasniecia_umowy, miesieczna_pensja)
VALUES (3, 'Dorota', 'Kobylinska', '84030198548', 503249573, '01/02/2019', '28/02/2023', 2700);
INSERT INTO pracownik
(nr_pracownika, imie, nazwisko, pesel, nr_telefonu, data_podpisania_umowy,
 termin_wygasniecia_umowy, miesieczna_pensja)
VALUES (4, 'Roman', 'Bruno', '79111227198', 512987205, '01/09/2020', '30/09/2024', 2600);
INSERT INTO wypozyczenie
(nr_wypozyczenia, data_wypozyczenia, termin_oddania, nr_klienta, nr_pracownika)
VALUES (seq_nr_wypozyczenia.nextval, '13/02/2018', '28/02/2018', 1, 1);
INSERT INTO wypozyczenie
(nr_wypozyczenia, data_wypozyczenia, termin_oddania, nr_klienta, nr_pracownika)
VALUES (seq_nr_wypozyczenia.nextval, '27/03/2018', '15/04/2018', 2, 1);
INSERT INTO wypozyczenie
(nr_wypozyczenia, data_wypozyczenia, termin_oddania, nr_klienta, nr_pracownika)
VALUES (seq_nr_wypozyczenia.nextval, '16/04/2018', '15/03/2018', 3, 1);
INSERT INTO wypozyczenie
(nr_wypozyczenia, data_wypozyczenia, termin_oddania, nr_klienta, nr_pracownika)
VALUES (seq_nr_wypozyczenia.nextval, '19/04/2018', '15/05/2018', 1, 1);
INSERT INTO wypozyczenie
(nr_wypozyczenia, data_wypozyczenia, termin_oddania, nr_klienta, nr_pracownika)
VALUES (seq_nr_wypozyczenia.nextval, '26/04/2018', '15/05/2018', 2, 1);
INSERT INTO wypozyczenie
(nr_wypozyczenia, data_wypozyczenia, termin_oddania, nr_klienta, nr_pracownika)
VALUES (seq_nr_wypozyczenia.nextval, '28/05/2018', '15/06/2018', 2, 1);
INSERT INTO wypozyczenie
(nr_wypozyczenia, data_wypozyczenia, termin_oddania, nr_klienta, nr_pracownika)
VALUES (seq_nr_wypozyczenia.nextval, '03/07/2018', '31/07/2018', 3, 1);
INSERT INTO wypozyczenie
(nr_wypozyczenia, data_wypozyczenia, termin_oddania, nr_klienta, nr_pracownika)
VALUES (seq_nr_wypozyczenia.nextval, '04/07/2018', '31/07/2018', 4, 2);
INSERT INTO wypozyczenie
(nr_wypozyczenia, data_wypozyczenia, termin_oddania, nr_klienta, nr_pracownika)
VALUES (seq_nr_wypozyczenia.nextval, '12/09/2018', '30/09/2018', 5, 2);
INSERT INTO wypozyczenie
(nr_wypozyczenia, data_wypozyczenia, termin_oddania, nr_klienta, nr_pracownika)
VALUES (seq_nr_wypozyczenia.nextval, '12/10/2018', '31/10/2018', 4, 1);
INSERT INTO wypozyczenie
(nr_wypozyczenia, data_wypozyczenia, termin_oddania, nr_klienta, nr_pracownika)
VALUES (seq_nr_wypozyczenia.nextval, '03/01/2019', '31/01/2019', 7, 2);
INSERT INTO wypozyczenie
(nr_wypozyczenia, data_wypozyczenia, termin_oddania, nr_klienta, nr_pracownika)
VALUES (seq_nr_wypozyczenia.nextval, '22/01/2019', '15/02/2019', 6, 2);
INSERT INTO wypozyczenie
(nr_wypozyczenia, data_wypozyczenia, termin_oddania, nr_klienta, nr_pracownika)
VALUES (seq_nr_wypozyczenia.nextval, '29/03/2019', '15/04/2019', 8, 3);
INSERT INTO wypozyczenie
(nr_wypozyczenia, data_wypozyczenia, termin_oddania, nr_klienta, nr_pracownika)
VALUES (seq_nr_wypozyczenia.nextval, '30/04/2019', '15/05/2019', 9, 1);
INSERT INTO wypozyczenie
(nr_wypozyczenia, data_wypozyczenia, termin_oddania, nr_klienta, nr_pracownika)
VALUES (seq_nr_wypozyczenia.nextval, '21/06/2019', '15/07/2019', 10, 3);
INSERT INTO wypozyczenie
(nr_wypozyczenia, data_wypozyczenia, termin_oddania, nr_klienta, nr_pracownika)
VALUES (seq_nr_wypozyczenia.nextval, '05/09/2019', '30/09/2019', 1, 3);
INSERT INTO wypozyczenie
(nr_wypozyczenia, data_wypozyczenia, termin_oddania, nr_klienta, nr_pracownika)
VALUES (seq_nr_wypozyczenia.nextval, '18/10/2019', '15/11/2019', 13, 2);
INSERT INTO wypozyczenie
(nr_wypozyczenia, data_wypozyczenia, termin_oddania, nr_klienta, nr_pracownika)
VALUES (seq_nr_wypozyczenia.nextval, '18/11/2019', '15/12/2019', 15, 1);
INSERT INTO wypozyczenie
(nr_wypozyczenia, data_wypozyczenia, termin_oddania, nr_klienta, nr_pracownika)
VALUES (seq_nr_wypozyczenia.nextval, '25/11/2019', '15/12/2019', 4, 3);
INSERT INTO wypozyczenie
(nr_wypozyczenia, data_wypozyczenia, termin_oddania, nr_klienta, nr_pracownika)
VALUES (seq_nr_wypozyczenia.nextval, '05/12/2019', '31/12/2019', 10, 2);
INSERT INTO wypozyczenie
(nr_wypozyczenia, data_wypozyczenia, termin_oddania, nr_klienta, nr_pracownika)
VALUES (seq_nr_wypozyczenia.nextval, '10/12/2019', '31/12/2019', 5, 1);
INSERT INTO wypozyczenie
(nr_wypozyczenia, data_wypozyczenia, termin_oddania, nr_klienta, nr_pracownika)
VALUES (seq_nr_wypozyczenia.nextval, '17/12/2019', '15/01/2020', 15, 3);
INSERT INTO wypozyczenie
(nr_wypozyczenia, data_wypozyczenia, termin_oddania, nr_klienta, nr_pracownika)
VALUES (seq_nr_wypozyczenia.nextval, '17/01/2020', '31/01/2020', 7, 1);
INSERT INTO wypozyczenie
(nr_wypozyczenia, data_wypozyczenia, termin_oddania, nr_klienta, nr_pracownika)
VALUES (seq_nr_wypozyczenia.nextval, '04/03/2020', '31/03/2020', 10, 2);
INSERT INTO wypozyczenie
(nr_wypozyczenia, data_wypozyczenia, termin_oddania, nr_klienta, nr_pracownika)
VALUES (seq_nr_wypozyczenia.nextval, '11/03/2020', '31/03/2020', 8, 3);
INSERT INTO wypozyczenie
(nr_wypozyczenia, data_wypozyczenia, termin_oddania, nr_klienta, nr_pracownika)
VALUES (seq_nr_wypozyczenia.nextval, '13/03/2020', '31/03/2020', 9, 3);
INSERT INTO wypozyczenie
(nr_wypozyczenia, data_wypozyczenia, termin_oddania, nr_klienta, nr_pracownika)
VALUES (seq_nr_wypozyczenia.nextval, '20/03/2020', '15/04/2020', 12, 2);
INSERT INTO wypozyczenie
(nr_wypozyczenia, data_wypozyczenia, termin_oddania, nr_klienta, nr_pracownika)
VALUES (seq_nr_wypozyczenia.nextval, '30/03/2020', '15/04/2020', 4, 1);
INSERT INTO wypozyczenie
(nr_wypozyczenia, data_wypozyczenia, termin_oddania, nr_klienta, nr_pracownika)
VALUES (seq_nr_wypozyczenia.nextval, '14/04/2020', '30/04/2020', 11, 3);
INSERT INTO wypozyczenie
(nr_wypozyczenia, data_wypozyczenia, termin_oddania, nr_klienta, nr_pracownika)
VALUES (seq_nr_wypozyczenia.nextval, '28/05/2020', '15/06/2020', 16, 2);
INSERT INTO wypozyczenie
(nr_wypozyczenia, data_wypozyczenia, termin_oddania, nr_klienta, nr_pracownika)
VALUES (seq_nr_wypozyczenia.nextval, '03/06/2020', '30/06/2020', 17, 1);
INSERT INTO wypozyczenie
(nr_wypozyczenia, data_wypozyczenia, termin_oddania, nr_klienta, nr_pracownika)
VALUES (seq_nr_wypozyczenia.nextval, '18/06/2020', '30/06/2020', 18, 1);
INSERT INTO wypozyczenie
(nr_wypozyczenia, data_wypozyczenia, termin_oddania, nr_klienta, nr_pracownika)
VALUES (seq_nr_wypozyczenia.nextval, '10/07/2020', '31/07/2020', 5, 3);
INSERT INTO wypozyczenie
(nr_wypozyczenia, data_wypozyczenia, termin_oddania, nr_klienta, nr_pracownika)
VALUES (seq_nr_wypozyczenia.nextval, '04/08/2020', '31/08/2020', 19, 2);
INSERT INTO wypozyczenie
(nr_wypozyczenia, data_wypozyczenia, termin_oddania, nr_klienta, nr_pracownika)
VALUES (seq_nr_wypozyczenia.nextval, '17/09/2020', '15/10/2020', 7, 4);
INSERT INTO wypozyczenie
(nr_wypozyczenia, data_wypozyczenia, termin_oddania, nr_klienta, nr_pracownika)
VALUES (seq_nr_wypozyczenia.nextval, '23/09/2020', '15/10/2020', 12, 4);
INSERT INTO wypozyczenie
(nr_wypozyczenia, data_wypozyczenia, termin_oddania, nr_klienta, nr_pracownika)
VALUES (seq_nr_wypozyczenia.nextval, '30/09/2020', '15/10/2020', 3, 2);
INSERT INTO wypozyczenie
(nr_wypozyczenia, data_wypozyczenia, termin_oddania, nr_klienta, nr_pracownika)
VALUES (seq_nr_wypozyczenia.nextval, '20/10/2020', '15/11/2020', 8, 4);
INSERT INTO wypozyczenie
(nr_wypozyczenia, data_wypozyczenia, termin_oddania, nr_klienta, nr_pracownika)
VALUES (seq_nr_wypozyczenia.nextval, '22/10/2020', '15/11/2020', 17, 3);
INSERT INTO wypozyczenie
(nr_wypozyczenia, data_wypozyczenia, termin_oddania, nr_klienta, nr_pracownika)
VALUES (seq_nr_wypozyczenia.nextval, '01/12/2020', '31/12/2020', 21, 1);
INSERT INTO wypozyczenie
(nr_wypozyczenia, data_wypozyczenia, termin_oddania, nr_klienta, nr_pracownika)
VALUES (seq_nr_wypozyczenia.nextval, '08/03/2021', '31/03/2021', 17, 1);
INSERT INTO wypozyczenie
(nr_wypozyczenia, data_wypozyczenia, termin_oddania, nr_klienta, nr_pracownika)
VALUES (seq_nr_wypozyczenia.nextval, '11/03/2021', '31/03/2021', 20, 1);
INSERT INTO wypozyczenie
(nr_wypozyczenia, data_wypozyczenia, termin_oddania, nr_klienta, nr_pracownika)
VALUES (seq_nr_wypozyczenia.nextval, '16/03/2021', '15/04/2021', 12, 4);
INSERT INTO wypozyczenie
(nr_wypozyczenia, data_wypozyczenia, termin_oddania, nr_klienta, nr_pracownika)
VALUES (seq_nr_wypozyczenia.nextval, '24/03/2021', '15/04/2021', 11, 4);
INSERT INTO wypozyczenie
(nr_wypozyczenia, data_wypozyczenia, termin_oddania, nr_klienta, nr_pracownika)
VALUES (seq_nr_wypozyczenia.nextval, '31/03/2021', '15/04/2021', 3, 2);
INSERT INTO wypozyczenie
(nr_wypozyczenia, data_wypozyczenia, termin_oddania, nr_klienta, nr_pracownika)
VALUES (seq_nr_wypozyczenia.nextval, '29/04/2021', '15/05/2021', 15, 2);
INSERT INTO wypozyczenie
(nr_wypozyczenia, data_wypozyczenia, termin_oddania, nr_klienta, nr_pracownika)
VALUES (seq_nr_wypozyczenia.nextval, '13/05/2021', '31/05/2021', 21, 4);
INSERT INTO wypozyczenie
(nr_wypozyczenia, data_wypozyczenia, termin_oddania, nr_klienta, nr_pracownika)
VALUES (seq_nr_wypozyczenia.nextval, '24/06/2021', '15/07/2021', 10, 3);
INSERT INTO wypozyczenie
(nr_wypozyczenia, data_wypozyczenia, termin_oddania, nr_klienta, nr_pracownika)
VALUES (seq_nr_wypozyczenia.nextval, '30/06/2021', '15/07/2021', 9, 2);
INSERT INTO wypozyczenie
(nr_wypozyczenia, data_wypozyczenia, termin_oddania, nr_klienta, nr_pracownika)
VALUES (seq_nr_wypozyczenia.nextval, '15/07/2021', '31/07/2021', 18, 1);
INSERT INTO wypozyczenie
(nr_wypozyczenia, data_wypozyczenia, termin_oddania, nr_klienta, nr_pracownika)
VALUES (seq_nr_wypozyczenia.nextval, '05/08/2021', '31/08/2021', 10, 4);
INSERT INTO wypozyczenie
(nr_wypozyczenia, data_wypozyczenia, termin_oddania, nr_klienta, nr_pracownika)
VALUES (seq_nr_wypozyczenia.nextval, '20/08/2021', '15/09/2021', 18, 2);
INSERT INTO wypozyczenie
(nr_wypozyczenia, data_wypozyczenia, termin_oddania, nr_klienta, nr_pracownika)
VALUES (seq_nr_wypozyczenia.nextval, '23/08/2021', '15/09/2021', 5, 2);
INSERT INTO wypozyczenie
(nr_wypozyczenia, data_wypozyczenia, termin_oddania, nr_klienta, nr_pracownika)
VALUES (seq_nr_wypozyczenia.nextval, '01/09/2021', '30/09/2021', 4, 2);
INSERT INTO wypozyczenie
(nr_wypozyczenia, data_wypozyczenia, termin_oddania, nr_klienta, nr_pracownika)
VALUES (seq_nr_wypozyczenia.nextval, '02/09/2021', '30/09/2021', 6, 2);
INSERT INTO wypozyczenie
(nr_wypozyczenia, data_wypozyczenia, termin_oddania, nr_klienta, nr_pracownika)
VALUES (seq_nr_wypozyczenia.nextval, '06/09/2021', '30/09/2021', 14, 2);
INSERT INTO wypozyczenie
(nr_wypozyczenia, data_wypozyczenia, termin_oddania, nr_klienta, nr_pracownika)
VALUES (seq_nr_wypozyczenia.nextval, '07/10/2021', '31/10/2021', 14, 4);
INSERT INTO wypozyczenie
(nr_wypozyczenia, data_wypozyczenia, termin_oddania, nr_klienta, nr_pracownika)
VALUES (seq_nr_wypozyczenia.nextval, '27/12/2021', '15/01/2021', 14, 3);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (1, 7);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (2, 16);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (2, 21);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (3, 1);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (4, 14);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (5, 6);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (5, 8);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (5, 3);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (6, 13);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (6, 2);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (7, 1);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (8, 12);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (9, 4);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (10, 17);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (11, 5);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (11, 6);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (12, 12);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (13, 7);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (14, 17);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (15, 9);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (15, 7);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (16, 10);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (17, 14);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (18, 11);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (19, 12);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (20, 17);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (21, 13);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (21, 14);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (22, 15);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (23, 16);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (24, 17);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (24, 14);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (25, 10);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (26, 19);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (27, 18);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (27, 3);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (27, 20);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (28, 21);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (29, 12);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (30, 1);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (31, 16);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (32, 2);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (33, 5);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (33, 3);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (34, 4);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (35, 15);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (36, 17);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (37, 6);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (38, 13);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (39, 17);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (40, 15);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (40, 5);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (41, 6);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (42, 1);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (43, 21);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (44, 7);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (45, 18);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (46, 19);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (46, 8);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (46, 21);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (47, 9);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (48, 10);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (49, 9);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (49, 17);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (50, 11);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (51, 2);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (52, 16);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (53, 13);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (53, 12);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (54, 6);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (55, 4);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (56, 7);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (57, 10);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (57, 12);
INSERT INTO pakiet
    (nr_wypozyczenia, nr_plyty)
VALUES (58, 16);
COMMIT;