set term postscript enhanced color 'Helvetica-Bold,16'
set output 'well.ps'
x1=0.0; y1=-210.0
x2=4.0; y2=10.0
set xr [x1:x2]
set yr [y1:y2]
set style line 1 lt 0 lw 1 lc rgb 'black' pt 6 ps 1
set style line 2 lt 1 lw 3 lc rgb 'blue' pt 6 ps 1
set style arrow 1 lt 0 lw 2 lc rgb 'forest-green' nohead
call 'en.dat'
plot 'potential.dat' w l noti ls 2
set output
! ps2pdf well.ps
! rm well.ps

