set title "zadanie 2" font ",20"
set key bmargin box center horizontal
set autoscale
set samples 1024
set xlabel "x"
set ylabel "y"
f(x)=sin(10*x)+sin(11*x)
g(x)=10*cos(10*x)+11*cos(11*x)
h(x)=-100*sin(10*x)-121*sin(11*x)
i(x)=-1000*cos(10*x)-1331*cos(11*x)
plot f(x), g(x), h(x), i(x)
pause -1