#!/bin/bash
read -r -p "Podaj pierwszą liczbę: " L1
read -r -p "Podaj drugą liczbę: " L2
echo "Suma liczb $L1 i $L2 to:" $(("$L1" + "$L2"))
echo "Różnica liczb $L1 i $L2 to:" $(("$L1" - "$L2"))
echo "Iloczyn liczb $L1 i $L2 to:" $(("$L1" * "$L2"))
