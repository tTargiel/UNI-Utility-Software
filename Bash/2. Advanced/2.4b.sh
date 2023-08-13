#!/bin/bash
for plik in *; do
    if [[ "$plik" =~ ^[A-Za-z] ]]; then
        if [ "${#plik}" -eq 4 ]; then
            mv "$plik" "$plik".txt
        fi
    fi
done
