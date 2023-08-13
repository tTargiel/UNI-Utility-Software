set title "zadanie 5" font ",20"
set key bmargin box center horizontal
set xrange [-4:6]
set yrange [-4:32]
f1(x)=a*exp(b*x/c)
fit f1(x) "dane/dane_2.dat" via a, b, c
plot "dane/dane_2.dat", f1(x) title "dofitowanie do f1(x)=a*exp(b*x/c)"
pause -1