set title "zadanie 10" font "Courier, 20"
set key bmargin box center horizontal
set xlabel "x" font "Courier, 8"
set ylabel "y" font "Courier, 8"
set zlabel "z"font "Courier, 8"
set xtics 4
set ytics 4
set ztics 0.8
f(x,y)=sin(x)*cos(y)
splot f(x,y)
pause -1