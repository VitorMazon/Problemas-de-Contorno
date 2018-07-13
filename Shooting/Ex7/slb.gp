set terminal pdf enhanced font 'Times New Roman'
set output "Ex7b.pdf"
set title "Potencial eletrostático entre duas esferas carregadas"
set key right box
set grid lw 2
set ytics 36.662, 0.002, 36.670
set xrange [2.9999:3.0001]
set xlabel "Raio r (polegadas)"
set ylabel "Potencial u (Volts)"
V=110
R1=2
R2=4
f(x)=(V*R1)/(x)*((R2-x)/(R2-R1))
plot f(x) t " Solução ", "ponto.dat" lc 7 pt 7 ps 0.65 t "Shoot. Linear u(3) "
set output
