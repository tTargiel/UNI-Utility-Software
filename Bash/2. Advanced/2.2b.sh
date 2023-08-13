#!/bin/bash
i=1
PODSTAWA="plik_"
while [ "$i" -le 20 ]; do
    touch "$PODSTAWA""$i"
    i=$(("$i" + 1))
done
