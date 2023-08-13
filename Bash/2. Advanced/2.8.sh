#!/bin/bash
KATALOG="2.8"
mkdir "$KATALOG"
touch "$KATALOG"/dwukolumnowy_1 "$KATALOG"/dwukolumnowy_2 "$KATALOG"/tymczasowy_1 "$KATALOG"/tymczasowy_2 "$KATALOG"/tymczasowy_3 "$KATALOG"/tymczasowy_4
for i in {1..10}; do
    echo $(($RANDOM % 10000000)) >> "$KATALOG"/tymczasowy_1
    echo $(($RANDOM % 10000000)) >> "$KATALOG"/tymczasowy_2
    echo $(($RANDOM % 10000000)) >> "$KATALOG"/tymczasowy_3
    echo $(($RANDOM % 10000000)) >> "$KATALOG"/tymczasowy_4
done
paste "$KATALOG"/tymczasowy_1 "$KATALOG"/tymczasowy_2 >> "$KATALOG"/dwukolumnowy_1
paste "$KATALOG"/tymczasowy_3 "$KATALOG"/tymczasowy_4 >> "$KATALOG"/dwukolumnowy_2
rm "$KATALOG"/tymczasowy_1 "$KATALOG"/tymczasowy_2 "$KATALOG"/tymczasowy_3 "$KATALOG"/tymczasowy_4
