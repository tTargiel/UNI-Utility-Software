#!/bin/bash
i=1
PODSTAWA="plik_"
until [ "$i" -gt 20 ]; do
    touch "$PODSTAWA""$i"
    i=$(("$i" + 1))
done
