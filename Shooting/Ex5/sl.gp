set terminal pdf enhanced font 'Times New Roman'
set output "Ex5.pdf"
set title "Shooting Linear para y = e^{-10x} para nº de passos diferentes"
set key right
set format y "%.0t*10^{%S}"
set xrange [0:1]
set log y
set xlabel "x"
set ylabel "log y"
f(x)=exp(-10*x)
plot f(x) t "Sol. Analítica", 'sol10.dat' w lp pt 7 ps 0.3 t "  h = 0.1  ", 'sol20.dat' w lp pt 7 ps 0.3 t "  h = 0.05  "
set output
