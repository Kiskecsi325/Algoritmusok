# Bash Tesztelő Script Leírása

## Cél
Ez a bash script a `buying_apples.py` Python programot teszteli 10 különböző bemeneti teszteset alapján. A script célja annak ellenőrzése, hogy a program a várt kimeneteket generálja-e a megadott bemenetekre.

---

## Fő Funkciók

1. **Könyvtárak Ellenőrzése:**
   - Ellenőrzi, hogy az `bemenet` (bemenetek) és a `kimenet` (elvárt kimenetek) könyvtárak léteznek-e.
   - Hibaüzenetet ír ki, ha valamelyik könyvtár hiányzik.

2. **Tesztesetek Kezelése:**
   - A script 10 különálló tesztesetet futtat le (`bemenet1.txt`-től `bemenet10.txt`-ig).
   - Minden tesztesethez tartozik egy bemeneti fájl, és egy elvárt kimeneti fájl.

3. **Python Program Futtatása:**
   - A script minden teszthez lefuttatja a `buying_apples.py` programot a bemeneti fájl tartalmával.

4. **Eredmények Összehasonlítása:**
   - A script összehasonlítja a program által generált kimenetet az elvárt eredménnyel.
   - Kiírja, hogy az adott teszt sikeres volt-e vagy sem.
   - Sikertelenség esetén megjeleníti a várt és kapott eredményeket is.

---

## Használat

   ```bash
   bash test_script.sh
   ```

---

## Példa Teszteredmények

- **Sikeres teszt:**
  ```
  Teszt 1: Sikeres.
  ```
- **Sikertelen teszt:**
  ```
  Teszt 2: Sikertelen.
    Várt: -1
    Kapott: 3
  ```

---

## Követelmények
- **Környezet:** Bash futtatási környezet.
- **Python:** Python 3.x telepítve legyen.
- **Program:** `minimum_cost_apples.py` megfelelő működése.

