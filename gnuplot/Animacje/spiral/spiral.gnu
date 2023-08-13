set terminal gif animate
set style line 1 lc rgb 'blue' lt 1 lw 2 pt 7 ps 2
unset key
set border 0
unset tics
set view 342,0
set xrange [-1:1]
set yrange [0:20]
set zrange [-1:1]
set output "spiral.gif"

# Spirala w góre
do for [ii=1:99] {
    splot 'spiral.dat' every ::1::ii w l ls 1, \
          'spiral.dat' every ::ii::ii w p ls 1
}

# Spirala w dół
do for [ii=99:1:-1] {
    splot 'spiral.dat' every ::1::ii w l ls 1, \
          'spiral.dat' every ::ii::ii w p ls 1
}