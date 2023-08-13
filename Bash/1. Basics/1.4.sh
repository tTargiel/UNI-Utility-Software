#!/bin/bash
ZMIENNA=""
if [ -n "$ZMIENNA" ]; then
    #-­n sprawdza czy argument nie jest pusty
    echo "Zmienna o nazwie ZMIENNA nie jest pusta"
else
    echo "Zmienna o nazwie ZMIENNA jest pusta"
fi
