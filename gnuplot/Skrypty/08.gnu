set title "zadanie 8" font ",20"
set key bmargin box center horizontal
f(x)=-k*x
fit f(x) "dane/dane_5.dat" using 1:2:3 yerrors via k
plot "dane/dane_5.dat" using 1:2:3 w yerrorbars, f(x)
pause -1