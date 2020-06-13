set terminal pngcairo  transparent enhanced font "arial,20" fontscale 1.0 size 2000, 1000 
set output 'exp_error_vast.png'
unset key
set style increment default
set samples 400, 400
set title "Ошибка экспоненты"
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
set xtics (0)
do for [n = -4:3:1] {
  vline_no_ln = (n + 0.5)
  vline_x = vline_no_ln * log(2)
  set arrow from vline_x, graph 0 to vline_x, graph 1 nohead
  #set label sprintf("%.1fln(2)", vline_no_ln) at vline_x, graph 0 left
  set xtics add (sprintf("%.1f ln(2)", vline_no_ln) vline_x)
}
plot [-3:3] "data/exp_error_vast_dec.dat" with dots
