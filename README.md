Automatyzacja testu z użyciem Selenium Web Driver
=======
## Przygotowanie
W pliku SearchGoogle.java (Ścieżka: \zad2\src\test\java\com\intive\patronage\tests\SearchGoogle.java) w lini 19 zamień "C:\\chromedriver.exe" na ścieżkę chromedriver.exe na Twoim komputerze.

```
System.setProperty("webdriver.chrome.driver", "C:\\chromedriver.exe");
```

## Uruchomienie
Uruchom wiersz poleceń i przejdź do katalogu, w którym zapisałeś repozytorium.
Wykonaj poniższe polecenia

```
 cd /zad2
 mvn clean
 mvn test

```
Wynik testu powinien wyświetlić się w wierszu poleceń.
