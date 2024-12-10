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
      echo "$n: helyes"
    else
      echo "$n"
	  echo "$result"
	  echo "$expected_output"
    fi
  fi
 done

