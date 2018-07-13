set terminal pdf enhanced font 'Times New Roman'
set output "diffErr.pdf"
set title "Diferenças finitas para y\" = 4(y - x) para nº de passos diferentes"
set key left box
set grid lw 1.5
set xrange [0.48:0.52]
set yrange [0.8:0.86]
set ytics 0.8,0.02,0.86 add ("0.833333" 0.833333, "0.826531" 0.826531)
set xtics 0.48,0.01,0.52
set ylabel "y"
set xlabel "x"
f(x)=exp(2)*(exp(2*x)-exp(-2*x))*(exp(4)-1)**(-1)+x
plot 'res1.dat' w lp pt 7 ps 0.3 t " h = 1/2 ", 'res3.dat' w lp pt 7 ps 0.3 t " h = 1/4 ", f(x) t "Solução Analítica"
set output

set output "diff.pdf"
set xrange [0:1]
unset yrange
set ytics 0,0.5,2
set xtics 0,0.25,1
set key left box
plot 'res1.dat' w lp pt 7 ps 0.3 t " h = 1/2 ", 'res3.dat' w lp pt 7 ps 0.3 t " h = 1/4 ", f(x) t "Solução Analítica"
set output
