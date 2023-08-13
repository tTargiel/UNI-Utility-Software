#!/bin/bash
ZMIENNA="$1"
if [ -n "$ZMIENNA" ]; then
    echo "Zmienna ma wartość: $ZMIENNA"
else
    ZMIENNA=1
    echo "Użyto domyślnej wartości zmiennej"
    echo "Zmienna ma wartość: $ZMIENNA"
fi
