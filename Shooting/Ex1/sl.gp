set terminal pdf enhanced font 'Times New Roman'
set output "Ex1.pdf"
set title "Shooting Linear para solução de y\" = 4(y - x), para nº de passos diferentes"
set key bottom right
set ylabel "y"
set xlabel "x"
set xrange [0:1]
f(x)=exp(2)*(exp(2*x)-exp(-2*x))*(exp(4)-1)**(-1)+x
plot 'sol2.dat' w lp pt 7 ps 0.3 t "  h=1/2  ", 'sol4.dat' w lp pt 7 ps 0.3 t "  h=1/4  ", f(x) t "Solução Analítica"
set output
