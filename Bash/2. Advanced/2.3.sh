#!/bin/bash
i=1
for plik in plik_*; do
    mv plik_"$i" nowy_plik_"$i"
    i=$(("$i" + 1))
done
