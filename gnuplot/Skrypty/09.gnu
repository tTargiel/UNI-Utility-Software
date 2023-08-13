set title "zadanie 9" font ",20"
set xrange [-1:1]
set yrange [-2:2]
set contour both
f(x,y)=exp(x**2-y**2)
splot f(x,y)
pause -1