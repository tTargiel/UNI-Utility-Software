#!/bin/bash
KATALOG="2.8"
i=1
touch "$KATALOG"/dwie_kolumny "$KATALOG"/tymczasowy_1 "$KATALOG"/tymczasowy_2
for i in {1..2}; do
    cut -f "$i" "$KATALOG"/dwukolumnowy_1 >> "$KATALOG"/tymczasowy_"$i"
    cut -f "$i" "$KATALOG"/dwukolumnowy_2 >> "$KATALOG"/tymczasowy_"$i"
done
paste "$KATALOG"/tymczasowy_1 "$KATALOG"/tymczasowy_2 >> "$KATALOG"/dwie_kolumny
rm "$KATALOG"/tymczasowy_1 "$KATALOG"/tymczasowy_2
