set terminal pdf enhanced font 'Times New Roman'
set output "Ex7a.pdf"
set title "Potencial eletrostático entre duas esferas carregadas"
set key right box
set grid lw 3
set ytics ("36.664222" 36.664222, "0" 0,"110" 110)
set xrange [2:4]
set xlabel "Raio r (polegadas)"
set ylabel "Potencial u (Volts)"
plot 'sol.dat' w l t "Shooting Linear" , "ponto.dat" lc 7 pt 7 ps 0.65 t "Shoot. Linear  u(3)"
set output
