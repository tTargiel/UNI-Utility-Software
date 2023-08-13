#!/bin/bash
ZMIENNA="$1"
if [ -n "$ZMIENNA" ]; then
    echo "Zmienna ma wartość: $ZMIENNA"
else
    echo "Nie podano zmiennej"
fi
