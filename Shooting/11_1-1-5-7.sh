cd Ex1/
gcc ShootingLinear.c -lm -o sl
./sl 2 > sol2.dat
./sl 4 > sol4.dat
gnuplot sl.gp

cd ../Ex5/
gcc ShootingLinear.c -lm -o sl
./sl 10 > sol10.dat
./sl 20 > sol20.dat
gnuplot sl.gp

cd ../Ex7/
gcc ShootingLinear.c -lm -o sl
./sl 10000 > sol.dat
gnuplot sl.gp
gnuplot slb.gp

cd ../
