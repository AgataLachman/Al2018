Automatyzacja testu z użyciem Selenium Web Driver
=======
## Instalacja
Aby uruchomić testy potrzebujesz:
1. Java SE Development Kit 8 [link](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html)
2. IntelliJ IDEA [link](https://www.jetbrains.com/idea/)
3. Selenium Client Java i Google Chrome Driver [link](http://www.seleniumhq.org/download/)

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
