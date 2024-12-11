# Bash Script Dokumentáció

## Cél

Ez a bash script a `collecting_number.py` Python program helyességét ellenőrzi. A script bemenetként kap egy `bemenetek.txt` és egy `kimenetek.txt` fájlt, és a Python program által generált eredményeket hasonlítja össze a várt eredményekkel.

## Fájlok

### bemenetek.txt

Ez a fájl tartalmazza a tesztesetek bemeneteit. Minden teszteset két sorból áll:
1. Az első sor a tömb méretét (n) adja meg.
2. A második sor a tömb elemeit tartalmazza szóközökkel elválasztva.

### kimenetek.txt

Ez a fájl tartalmazza a várt kimeneteket a `bemenetek.txt` fájlban található bemenetekhez. A sorok sorrendje meg kell, hogy egyezzen a bemenetek sorrendjével.

### collecting_number.py

Ez a Python program, amely kiszámítja a megadott tömb összegyűjtésének fordulóit a feladatnak megfelelően. A script ezt a programot futtatja a bemenetek ellenőrzésekor.

## Script Felépítése

### Beolvasás

A script beolvassa a `bemenetek.txt` és a `kimenetek.txt` fájlokat. A sorvégi karaktereket eltávolítja az összehasonlítás helyessége érdekében.

### Tesztelés

A script iterál a `bemenetek.txt` fájl sorain, és minden két egymást követő sort bemenetként átad a `collecting_number.py` programnak. Az általa generált kimenetet összehasonlítja a `kimenetek.txt` megfelelő sorával.

### Sikertelen Teszt Eset

Ha egy bemenet kimenete hibás, a script kiírja:
- a hibás teszt sorszámát,
- valamint a várt eredményt,
- a kapott eredményt.


### Sikeres Teszt

Minden sikeresen teljesített teszteset során megjelenik a „Teszt helyes” megjegyzés a teszt sorszámával.

## Formátum Példa

### bemenetek.txt

```
5
4 2 1 5 3
7
6 3 7 1 2 5 4
10
10 9 8 7 6 5 4 3 2 1
```

### kimenetek.txt

```
3
4
10
```

### Terminál Kimenet

```
Teszt 1: helyes
Teszt 2: helyes
Teszt 3: helyes
```

### Hibás Teszteset

Ha hibás a kimenet:
```
Teszt 2: hibás (várt: 4, kapott: 5)
```

