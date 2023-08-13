set title "zadanie 6" font ",20"
set key bmargin box center horizontal
set autoscale
set xlabel "rok"
plot "dane/dane_3.dat" using 1:2 title "PKB" with lines linecolor rgb "red", "dane/dane_3.dat" using 1:3 title "%PKB" with lines linecolor rgb "black", "dane/dane_3.dat" using 1:4 title "PKB/os" with lines linecolor rgb "green"
pause -1