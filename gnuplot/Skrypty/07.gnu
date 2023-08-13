# set title "zadanie 7" font ",20" offset 0
set label "zadanie 7" at screen 0.5, screen 0.98 center font ",16"
# set key bmargin box center horizontal
unset key
set samples 128
set multiplot layout 2,3

# Wartość prędkości poziomej: vx=v0=const.
# vx=v0=$4
set title "war. pręd. poziomej w czasie"
plot "dane/dane_4.dat" using 1:4 with lines

# Wartość prędkości pionowej: vy=-(g*t)
# vy=$5
set title "war. pręd. pionowej w czasie"
plot "dane/dane_4.dat" using 1:5 with lines
# plot "dane/dane_4.dat" using 1:(-(9.81*$1)) with lines

# Wartość prędkości całkowitej: v=sqrt(v0^2+(g*t)^2)
# v0=vx=$4, g=9.81, t=$1
set title "war. pręd. całkowitej w czasie"
plot "dane/dane_4.dat" using 1:(sqrt($4**2+(9.81*$1)**2)) with lines

# Energia cząstki: m*g*h
# m=1, g=9.81, h=$3
set title "energia cząstki w czasie"
plot "dane/dane_4.dat" using 1:(1*9.81*$3) with lines

# Równanie toru rzutu poziomego: y=H0-(g*x^2)/(2*v0^2)
# H0=0, g=9.81, x=$2, v0=vx=$4
set title "równ. toru rzutu poziomego"
plot "dane/dane_4.dat" using 1:(0-(9.81*$2**2)/(2*$4**2)) with lines

# Wysokość na jakiej znajduje się ciało po czasie t: h=H0-(g*t^2)/2
# H0=0, g=9.81
set title "wys. na jakiej znajduje się ciało"
plot "dane/dane_4.dat" using 1:(0-(9.81*$1**2)/2) with lines

pause -1