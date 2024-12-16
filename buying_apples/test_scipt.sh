#!/bin/bash

PROGRAM="buying_apples.py"


for i in {1..10}; do
    INPUT_FILE="bemenet$i.txt"
    EXPECTED_FILE="kimenet$i.txt"

    if [ ! -f "$INPUT_FILE" ] || [ ! -f "$EXPECTED_FILE" ]; then
        echo "Hiba: A $INPUT_FILE vagy a $EXPECTED_FILE hiányzik."
        continue
    fi

    OUTPUT=$(python3 $PROGRAM < $INPUT_FILE)

    EXPECTED_OUTPUT=$(cat $EXPECTED_FILE)

    if [ "$OUTPUT" == "$EXPECTED_OUTPUT" ]; then
        echo "Teszt $i: Sikeres."
    else
        echo "Teszt $i: Sikertelen."
        echo "  Várt: $EXPECTED_OUTPUT"
        echo "  Kapott: $OUTPUT"
    fi
done
