#!/bin/bash
KATALOG="2.8"
i=1
for plik in "$KATALOG"/*; do
    cut -f 1 "$KATALOG"/dwukolumnowy_"$i" >> "$plik"_kolumna_1
    cut -f 2 "$KATALOG"/dwukolumnowy_"$i" >> "$plik"_kolumna_2
    i=$(("$i" + 1))
done
