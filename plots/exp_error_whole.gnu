set terminal pngcairo  transparent enhanced font "arial,20" fontscale 1.0 size 2000, 1000 
set output 'exp_error_vast_whole.png'
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
plot [-744:709] "data/exp_error_vast_whole_dec.dat" with dots
