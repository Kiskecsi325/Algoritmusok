# Dokumentáció az `test_script.sh` működéséhez

## Célja
Az `test_script.sh` script célja, hogy automatizáltan ellenőrizze a `activities.py` Python program helyes működését. A script 10 tesztesetet futtat, összehasonlítja a program által generált kimenetet az előre megadott várható eredményekkel, és részletes visszajelzést ad az eredményekről.

---

## Működés

### 1. **Tesztfájlok beolvasása**
- A script egy meghatározott névkonvenció szerint tárolja a bemeneteket (`bemenetX.txt`) és a várható eredményeket (`kimenetX.txt`), ahol `X` az 1-től 10-ig terjedő teszteset sorszáma.
- A bemenetek fájlnevei: `bemenet1.txt`, `bemenet2.txt`, ..., `bemenet10.txt`.
- A várt eredmények fájlnevei: `kimenet1.txt`, `kimenet2.txt`, ..., `kimenet10.txt`.

### 2. **Python program futtatása**
- A bemeneti fájl tartalmát átadja a `activities.py` programnak szabványos bemenetként (`stdin`).
- A program futtatása után az eredményt összehasonlítja a megfelelő kimeneti fájl tartalmával.

### 3. **Eredmények kiértékelése**
- Ha a program által generált kimenet megegyezik a várható kimenettel:
  - A script kiírja: `Teszt X: Helyes`.
- Ha a kimenetek nem egyeznek:
  - Kiírja: `Teszt X: Hibás`.
  - Továbbá részletezi:
    - **Kapott eredményt**.
    - **Várt eredményt**.

### 4. **Hibaellenőrzés**
- A script ellenőrzi, hogy az összes bemeneti és kimeneti fájl elérhető-e.
- Ha egy fájl hiányzik, azt külön jelzi.

---

## Futtatás

### Előkészületek
- Győződj meg arról, hogy a `activities.py` program és a szükséges tesztfájlok ugyanabban a mappában találhatók.
- Adj futtatási engedélyt a scriptnek:
  ```bash
  chmod +x test_script.sh
