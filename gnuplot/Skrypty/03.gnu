set title "zadanie 3" font ",20"
set key bmargin box center horizontal
set autoscale
set xlabel "czas"
set ylabel "temperatura"
plot "dane/dane_1.dat" title "linespoints" with linespoints, "dane/dane_1.dat" title "cspline" smooth cspline, "dane/dane_1.dat" title "acspline" smooth acspline, "dane/dane_1.dat" title "bezier" smooth bezier
pause -1