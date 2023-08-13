#!/bin/bash
KATALOG="lista_3_dane"
for plik in "$KATALOG"/*; do
    mv "$plik" "${plik//.dat/.DAT}"
done
