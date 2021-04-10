# monte-carlo-simulation

## Zadanie 1
Należy zmodyfikować kod dla aproksymacji stałej PI, aby sprawdzić jak rozmiar próbki wpływa na błąd aproksymacji. Błąd aproksymacji obliczamy jako wartość bezwględną różnicy, pomiędzy aproksymacją PI i wartością rzeczywistą PI (3.14159265). Należy przygotować wykres:

![Wykres1](https://i.imgur.com/ATC0sbD.png)

Notatki pomocnicze:
*Szacowanie wartości stałej PI. Należy zmodyfikować kod aby sprawdzić, jak rozmiar próbki wpływa na błąd aproksymacji.
Rozmiar próbki, w kodzie jest to 'runs <- 100000'. Jaki będzie błąd oszacowania? Jak to w ogóle obliczyć? W tym przykładzie. Znamy dokładną wartość, a trzeba obliczyć różnice bezwzględna. Dla każdego rozmiaru próbki, trzeba powtórzyć te operacje wielokrotnie, żeby uzyskać jakąś średnią. Te powtórzenia tzreba wykonać kilkukrotnie, kilkukrotnie obliczyć błąd i podać wartość średnią tego błędu. Na podstawie wyników przygotować wykres (jak w zadaniu) od 1000 aż do wartości powyżej 100000 z jakimś krokiem (rozmiar próbki). Rozwiązanie w formie sprawozdania. Strona tytułowa: Symulacja Monte Carlo, nazwiska imiona w sekcji + zadanie, rozwiązanie + kod + wniosek jak sie zmienia błąd aproksymacji wraz ze wzrostem próbki*

## Zadanie 2
Zaprogramować symulację Monte Carlo (np. w jęyku R), która pozwoli obliczyć pole powierzchni szarego obszaru, przedstawionego na poniższym rysunku. Obliczyć błąd uzyskanego wyniku.

![Wykres2](https://i.imgur.com/hKRwiO3.png)

Notatki pomocnicze:
*Zaprogramować symulacje która policzy pole pow. takiej figury. Można wykorzystać kod z zadania z liczby PI. Metodą monte carlo. Losowanie punkty w prostokącie, opisanym na wieloboku. Prostokąt o podstawie szerokości 8 i wysokości 2. Korzystając z rozkłądu równomiernego. Znając pole pow. prostokąta (2x8), uwzględniając ile pukntów trafiło w figure, trzeba obliczyć pole powierzchni. Stosunek, liczba pkt która trafiła, i ogólną w prostokącie i mnożymy to razy pole pow. prostokąta. To nam da w wyniku oszacowane pole powierzchni wg. kształtu. Błąd oszacowania jako wartość bezwzględną wg. rzeczywistym polem. pow. a tym, którym uzyskamy jako wynik. Jedna realizacja to za mało, trzeba powtórzyć kilka razy. Sprawdzenie czy punkt trafił w figure można zrobić kilkoma ifami.*
