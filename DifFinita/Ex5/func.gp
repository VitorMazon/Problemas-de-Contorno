set terminal pdf enhanced font 'Times New Roman'
set output "diff.pdf"
set title "Solução para y\" = 100y, por diferenças finitas"
set key right box
set xrange [0:1]
set ylabel "y"
set xlabel "x"
set grid 
f(x)=exp(-10*x) 
plot 'res9.dat' w lp pt 7 ps 0.3 t " h = 0.1 ", 'res19.dat' w lp pt 7 ps 0.3 t " h = 0.05 ", f(x) t "Solução Analítica"
set output

set output "Log_diff.pdf"
set log y
set ylabel "log y"
set format y "%.0t*10^{%S}"
plot 'res9.dat' w lp pt 7 ps 0.3 t " h = 0.1 ", 'res19.dat' w lp pt 7 ps 0.3 t " h = 0.05 ", f(x) t "Solução Analítica"
set output
