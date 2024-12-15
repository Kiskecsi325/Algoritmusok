#!/bin/bash

# Tesztesetek száma
test_count=10

# Tesztesetek ellenőrzése
for ((i = 1; i <= $test_count; i++)); do
    # Bemenet és kimenet fájlok
    input_file="bemenet${i}.txt"
    expected_output_file="kimenet${i}.txt"

    # Ellenőrizzük, hogy léteznek-e a fájlok
    if [[ ! -f "$input_file" || ! -f "$expected_output_file" ]]; then
        echo "Hiba: A ${i}. teszteset fájljai nem találhatók."
        continue
    fi

    # Az elvárt kimenet beolvasása
    expected_output=$(<"$expected_output_file")

    # A bemenet átadása a Python programnak
    result=$(<"$input_file" python3 shortest_routs_II.py)

    # Eredmények összehasonlítása
    if [[ "$result" == "$expected_output" ]]; then
        echo "Teszt $i: Helyes"
    else
        echo "Teszt $i: Helytelen"
        echo "Kapott eredmény: $result"
        echo "Várt eredmény: $expected_output"
    fi
done
