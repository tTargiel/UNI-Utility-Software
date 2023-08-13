#!/bin/bash
KATALOG="2.8"
touch "$KATALOG"/cztery_kolumny
paste "$KATALOG"/dwukolumnowy_1 "$KATALOG"/dwukolumnowy_2 >> "$KATALOG"/cztery_kolumny
