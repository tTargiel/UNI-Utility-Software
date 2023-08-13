#!/bin/bash
PIERWSZA="a"
for plik in *; do
    if [ "${plik:0:1}" == "$PIERWSZA" ]; then
        mv "$plik" "$plik".txt
    fi
done
