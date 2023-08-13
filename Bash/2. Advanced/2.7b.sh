#!/bin/bash
KATALOG="lista_3_dane"
for plik in "$KATALOG"/*; do
    mv "$plik" "${plik//symulacja_monte_carlo/smc}"
done
