#!/bin/bash

# A Python program neve
PROGRAM="activities.py"

# Tesztfájlok előtagjai
INPUT_PREFIX="bemenet"
OUTPUT_PREFIX="kimenet"
TEST_COUNT=10

# Tesztek futtatása
for ((i = 1; i <= $TEST_COUNT; i++)); do
    INPUT_FILE="${INPUT_PREFIX}${i}.txt"
    EXPECTED_OUTPUT_FILE="${OUTPUT_PREFIX}${i}.txt"

    # Ellenőrizzük, hogy a tesztfájlok léteznek-e
    if [[ ! -f "$INPUT_FILE" || ! -f "$EXPECTED_OUTPUT_FILE" ]]; then
        echo "Hiba: A ${i}. teszteset fájljai nem találhatók."
        continue
    fi

    # Python program futtatása
    RESULT=$(python3 "$PROGRAM" < "$INPUT_FILE")
    EXPECTED_OUTPUT=$(<"$EXPECTED_OUTPUT_FILE")

    # Eredmény összehasonlítása
    if [[ "$RESULT" == "$EXPECTED_OUTPUT" ]]; then
        echo "Teszt $i: Helyes"
    else
        echo "Teszt $i: Hibás"
        echo "Kapott: $RESULT"
        echo "Várt: $EXPECTED_OUTPUT"
    fi
done
