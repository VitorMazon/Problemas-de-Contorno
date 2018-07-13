set terminal pdf enhanced font 'Times New Roman'
set output "diff.pdf"
set title "Solução por Diferenças finitas, com nº passos diferentes, para y\" = y\' + 2y + cos(x)"
set key left box
set ylabel "y"
set xlabel "x"
set grid lw 2
set xtics (0, 'π/8' 0.125*pi,'π/4' 0.25*pi, '3π/8' 0.375*pi,'π/2' 0.5*pi)
set ytics -0.30,0.1,-0.1 add ("-0.153666" -0.153666, "-0.282906" -0.282906)
set xrange [0:(pi)/2]
set yrange [-0.33:-0.1]
f(x)=(-0.1)*(sin(x)+3*cos(x))
plot 'res1.dat' w lp pt 7 ps 0.3 t "h = π/4", 'res3.dat' w lp pt 7 ps 0.3 t "h = π/8", f(x) t "Solução Analítica"
set output
