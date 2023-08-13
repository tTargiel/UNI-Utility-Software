set title "zadanie 4" font ",20"
set key bmargin box center horizontal
set xlabel "czas"
set ylabel "temperatura"
set xrange [-128:128]
set yrange [-20:80]
f1(x)=a1*x+b1
f2(x)=a2*x**2+b2*x+c2
f3(x)=a3*x**3+b3*x**2+c3*x+d3
fit f1(x) "dane/dane_1.dat" via a1, b1
fit f2(x) "dane/dane_1.dat" via a2, b2, c2
fit f3(x) "dane/dane_1.dat" via a3, b3, c3, d3
plot "dane/dane_1.dat" title "linespoints" w linespoints, f1(x) title "f-cja liniowa", f2(x) title "f-cja kwadratowa", f3(x) title "f-cja 3 st."
pause -1