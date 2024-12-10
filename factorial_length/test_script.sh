#!/bin/bash

# Ellenőrizd, hogy léteznek-e a szükséges fájlok
if [[ ! -f bemenetek.txt ]]; then
  echo "A bemenetek.txt fájl nem található!"
  exit 1
fi

if [[ ! -f kimenetek.txt ]]; then
  echo "A kimenetek.txt fájl nem található!"
  exit 1
fi

# Beolvasás a bemenetek.txt és kimenetek.txt fájlokból
paste bemenetek.txt kimenetek.txt | while IFS=$'\t' read -r n expected_output; do
  # Ellenőrizd, hogy a sor nem üres
  if [[ -n "$n" ]]; then
    # Futtasd a factorial_length.py programot és add át a bemeneti értéket
    result=$(python factorial_length.py <<< "$n" | tr -d '\r\n')
	expected_output=$(echo "$expected_output" | tr -d '\r\n')
    # Ellenőrizd, hogy a kapott eredmény megegyezik-e a várt kimenettel
    if [[ "$result" == "$expected_output" ]]; then
      echo "A kapott érték helyes az adott bemenetre: $n"
    else
      echo "Bemenet: $n"
	  echo "Kapott érték: $result"
	  echo "Várt érték: $expected_output"
    fi
  fi
 done
 echo "Kilépéshez nyomj meg egy gombot..."
 read -p "Nyomj meg egy gombot, majd egy ENTER-t"

