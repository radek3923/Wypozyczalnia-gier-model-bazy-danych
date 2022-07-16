# Wypozyczalnia-gier-model-bazy-danych
Opracowanie modelu logicznego oraz relacyjnego bazy danych.
Implementacja modelu na serwerze Oracle. Opracowanie skryptów
wdrożeniowych służących do implementacji i zarządzania projektem.
Realizacja analizy biznesowej oraz prezentacja wyników w postaci
analitycznej. Dołączenie instrukcji instalacji projektu oraz sprawdzenie jego
poprawności.


ANALIZA BIZNESOWA PROJEKTOWANEJ RZECZYWISTOŚCI
Opracowany model odnosi się do wypożyczalni gier komputerowych . Analiza biznesowa owej
wypożyczalni, to potrzeby biznesowe oraz aktualny stan rynkowy wypożyczalni:
• Czy pracownicy działają efektywnie, tj. czy ilość wypożyczeni może być zależna od pracownika
mającego aktualnie dyżur, na przykład poprzez rozmowę z klientem, zachęcanie do zagrania w
inną grę komputerową?
• Czy przybywa nowych klientów? Czy aktywność klientów spada wraz z upływem czasu? Jak
ściągać do siebie nowych klientów?
• Jak wygląda podsumowanie danego roku w odniesieniu do poprzedniego? Czy wyraźny jest
wzrost obrotu gier i idący z tym wzrost zarobionych pieniędzy?
• Jaki wkład w działanie wypożyczalni mają osoby z poszczególnych grup wiekowych? Czy sposób
działania marketingu wypożyczalni jest skierowany na osoby młode, a może te starsze?


Na część z tych pytań możemy odpowiedzieć przy pomocy bazy danych obejmującej tę
wypożyczalnię. Przechowuje ona dane w odpowiednich tabelach:

KLIENT Informacje o kliencie. Jego imię i nazwisko, datę założenia karty bibliotecznej
oraz PESEL.

PRACOWNIK Informacje o pracownikach wypożyczalni. Ich imiona i nazwiska, numery
telefonów, PESELe, daty końca i początku umowy oraz wysokość pensji.

FILIA Informacje o filiach wypożyczalni. A dokładnie ich adres.

PLATFORMA (słownikowa) Informacje o platformach, na jakie są dostępne gry w wypożyczalni. Zawiera
nazwy tych platform

WYDAWCA Informacje o wydawcach gierz wypożyczalni. Zawiera ich nazwy firm, imiona i
nazwiska założyciela, kraj pochodzenia i daty założenia firmy .
GRA Informacje o poszczególnych grach. Zawiera tytuły gier, identyfikatory filii, w
której się znajdują, identyfikatory platform, w których są dostępne.

PEGI – klasyfikacja wiekowa, dla których dany tytuł jest odpowiedni dla
gracza oraz koszt wypożyczenia.

WYPOZYCZENIE Informacje o poszczególnych wypożyczeniach. Zawiera datę wypożyczenia i
termin zwrotu, identyfikator pracownika, który dane wypożyczenie obsłużył
oraz identyfikator klienta, który danego wypożyczenia dokonał.

PAKIET Informacje o płytach gier, a wypożyczeniach. Mówi jakie płyty zostały
wypożyczone w danym wypożyczeniu. Zawiera identyfikator wypożyczenia i
identyfikator płyty.

WYDAWNICTWO Informacje o grach, a wydawcach. Mówi jaka gra przez jakich wydawców
została wydana. Zawiera identyfikator płyty i identyfikator wydawcy.


W przyjętym modelu przyjęto, że jedną grę może mieć kliku wydawców oraz że jedno
wypożyczenie może obejmować kilka gier.
