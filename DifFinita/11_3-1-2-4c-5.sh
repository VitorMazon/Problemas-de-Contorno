cd Ex1/
gcc DifFinita.c -lm -o df
./df 1 > res1.dat
./df 3 > res3.dat
gnuplot func.gp

cd ../Ex2/
gcc DifFinita.c -lm -o df
./df 1 > res1.dat
./df 3 > res3.dat
gnuplot func.gp

cd ../Ex4c/
gcc DifFinita.c -lm -o df
./df 19 > res.dat
gnuplot func.gp

cd ../Ex5/
gcc DifFinita.c -lm -o df
./df 9 > res9.dat
./df 19 > res19.dat
gnuplot func.gp

cd ../
