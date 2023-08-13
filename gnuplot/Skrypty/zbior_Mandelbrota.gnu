complex(x,y)=x*{1,0}+y*{0,1}
mandel(x,y,z,n)=(abs(z)>2.0 || n>=200) ? n : mandel(x,y,z*z+complex(x,y),n+1)
set xrange [-1.5:0.5]
set yrange [-1:1]
# set zrange [199:200]
# set logscale z
set isosample 100
set hidden3d
set contour
splot mandel(x,y,{0,0},0) notitle
pause -1