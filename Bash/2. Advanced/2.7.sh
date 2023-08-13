#!/bin/bash
KATALOG="lista_3_dane"
mkdir "$KATALOG"
i=1
for i in {01..20}; do
    touch "$KATALOG"/symulacja_monte_carlo_"$i".dat
done
