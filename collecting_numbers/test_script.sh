#!/bin/bash

# Python program fájlneve
PROGRAM="collecting_numbers.py"

# Tesztelési fájlok
BEMENETEK="bemenetek.txt"
KIMENETEK="kimenetek.txt"

# Ellenőrzés
if [[ ! -f "$PROGRAM" ]]; then
  echo "A Python program ($PROGRAM) nem található."
  exit 1
fi

if [[ ! -f "$BEMENETEK" ]]; then
  echo "A bemenetek fájl ($BEMENETEK) nem található."
  exit 1
fi

if [[ ! -f "$KIMENETEK" ]]; then
  echo "A kimenetek fájl ($KIMENETEK) nem található."
  exit 1
fi

# Olvasás a bemenetekből és kimenetekből
mapfile -t bemenetek < "$BEMENETEK"
mapfile -t kimenetek < "$KIMENETEK"

# Tesztek száma
TESZT_SZAM=$((${#bemenetek[@]} / 2))

# Tesztelés
for ((i=0; i<TESZT_SZAM; i++)); do
  bemenet_n=${bemenetek[$((i*2))]}
  bemenet_tomb=${bemenetek[$((i*2+1))]}
  elvart_kimenet=$(echo "${kimenetek[$i]}" | tr -d '\r')

  # Program futtatása
  eredmeny=$(echo -e "$bemenet_n\n$bemenet_tomb" | python3 "$PROGRAM")

  # Eredmény ellenőrzése
  if [[ "$eredmeny" == "$elvart_kimenet" ]]; then
    echo "Teszt $((i+1)): helyes"
  else
    echo "Teszt $((i+1)): hibás (várt: $elvart_kimenet, kapott: $eredmeny)"
  fi
done
