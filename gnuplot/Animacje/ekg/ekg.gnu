set terminal gif animate
set output "ekg.gif"
set xrange [10:25]
set yrange [-15:15]
n=15
set samples n
unset key
set border 0
unset tics
system("rm ekg.dat")
system("touch ekg.dat")
f(x)=-20*(exp(((x-10%20))-10)*(exp(5*(((x-10%20))-10))-57*exp(4*(((x-10%20))-10))+302*exp(3*(((x-10%20))-10))-302*exp(2*(((x-10%20))-10))+57*(exp(((x-10%20))-10))-1))/(exp(((x-10%20))-10)+1)**7
set table "ekg.dat"
plot f(x)
unset table
do for [i=1:n] {
    plot "ekg.dat" every ::1::i with lines lw 3 lc rgb "red"
}