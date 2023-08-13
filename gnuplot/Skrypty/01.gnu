set title "zadanie 1" font ",20"
set key bmargin box center horizontal
set parametric
set dummy t
set samples 128

# Dane
v=20
a=pi/3
g=9.81
c=-1

# Współrzędne ciała w dowolnej chwili t
x(t)=v*t*cos(a)
y(t)=v*t*sin(a)-(g/2)*t**2

y2(t)=c*x(t)

plot x(t), y(t) title "tor rzutu", x(t), y2(t) title "zbocze wzgórza"

# Obliczenie miejsca strzałki
d=(c*v*cos(a)-v*sin(a))**2-2*g
t1=(v*sin(a)-c*v*cos(a)+sqrt(d))/g

set arrow from x(t1)+2, y(t1)+16 to x(t1), y2(t1)

# Wykres niech zaczyna się w t=0s a kończy jedną sekundę po uderzeniu obiektu w ziemie
set trange [0:t1+1]

replot
pause -1