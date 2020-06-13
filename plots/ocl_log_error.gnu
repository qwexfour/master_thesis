set terminal pngcairo  transparent enhanced font "arial,20" fontscale 1.0 size 2000, 1000 
set output 'ocl_log_error_vast.png'
unset key
set style increment default
set samples 400, 400
set title "Ошибка логарифма"
set title  font ",28" norotate
set xrange [ * : * ] noreverse writeback
set x2range [ * : * ] noreverse writeback
set yrange [ * : * ] noreverse writeback
set y2range [ * : * ] noreverse writeback
set zrange [ * : * ] noreverse writeback
set cbrange [ * : * ] noreverse writeback
set rrange [ * : * ] noreverse writeback
set xlabel "Аргумент функции"
set ylabel "Ошибка, ULP"
set xtics (1)
vline_denom = 2
while (vline_denom <= 8) {
  vline_x = sqrt(2) / vline_denom
  set arrow from vline_x, graph 0 to vline_x, graph 1 nohead
  set xtics add (sprintf("sqrt(2)/%d", vline_denom) vline_x)
  vline_denom = vline_denom * 2.0;
}
set arrow from sqrt(2), graph 0 to sqrt(2), graph 1 nohead
set xtics add ("sqrt(2)" sqrt(2))
vline_nom = 2
while (vline_nom <= 4) {
  vline_x = vline_nom * sqrt(2)
  set arrow from vline_x, graph 0 to vline_x, graph 1 nohead
  set xtics add (sprintf("%d sqrt(2)", vline_nom) vline_x)
  vline_nom = vline_nom * 2.0;
}
set logscale x
plot [0.125:8] "data/ocl_log_error_vast_dec.dat" with dots
