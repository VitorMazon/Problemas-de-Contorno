set terminal pdf enhanced font 'Times New Roman'
set output "diff.pdf"
set title "Solução para y\" = -4x^{-1} y\' + 2x^{-2} y - 2x^{-2} ln x"
set key right bottom box
set grid lw 1.5
set xrange [1:2]
set ylabel "y"
set xlabel "x"
f(x)=4/(x)-2/(x**2)+log(x)-1.5 
plot 'res.dat' w lp pt 7 ps 0.3 t " Dif. Finitas ", f(x) t "Solução Analítica"
set output
