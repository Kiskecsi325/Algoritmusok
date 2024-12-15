# Bash Script Dokumentáció

## Cél

Ez a bash script a `factorial_length.py` Python program helyességét ellenőrzi. A script bemenetként kap egy `bemenetek.txt` és egy `kimenetek.txt` fájlt, és a Python program által generált eredményeket hasonlítja össze a várt eredményekkel.

## Fájlok

### bemenetek.txt

Ez a fájl tartalmazza a tesztesetek bemeneteit. Minden teszteset egy külön sorban szerepel.

### kimenetek.txt

Ez a fájl tartalmazza a várt kimeneteket a `bemenetek.txt` fájlban található bemenetekhez. A sorok sorrendje meg kell, hogy egyezzen a bemenetek sorrendjével.

### factorial\_length.py

Ez a Python program, amely kiszámítja a faktoriális hosszát a bemenet alapján. A script ezt a programot futtatja a bemenetek ellenőrzésekor.

## Script Felépítése

### Beolvasás

A script beolvassa a `bemenetek.txt` és a `kimenetek.txt` fájlokat. A sorvégi karaktereket eltávolítja az összehasonlítás helyessége érdekében.

### Tesztelés

A script iterál a `bemenetek.txt` fájl sorain, és minden sor bemenetét átadja a `factorial_length.py` programnak. Az általa generált kimenetet összehasonlítja a `kimenetek.txt` megfelelő sorával.

### Sikertelen Teszt Eset

Ha egy bemenet kimenete hibás, a script kiírja a bemenetet, a kapott értéket, illetve az adott bemenethez várt értéket.

### Sikeres Teszt

Minden sikeresen átment teszteset a "A kapott érték helyes az adott bemenetre:{n}" megjegyzéssel jelenik meg.

## Formátum Példa

### bemenetek.txt

```
1
10
100
```

### kimenetek.txt

```
1
7
158
```

### Terminál Kimenet

```
A kapott érték helyes az adott bemenetre:1
A kapott érték helyes az adott bemenetre:7
A kapott érték helyes az adott bemenetre:158
```
