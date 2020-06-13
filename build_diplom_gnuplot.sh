#!/bin/bash

set -x

gnuplot plots/exp_error.gnu
gnuplot plots/exp_error_whole.gnu
gnuplot plots/log_error.gnu
gnuplot plots/log_error_whole.gnu
gnuplot plots/ocl_exp_error.gnu
gnuplot plots/ocl_log_error.gnu

pdflatex -shell-escape diplom_gnuplot
bibtex diplom_gnuplot
pdflatex -shell-escape diplom_gnuplot
pdflatex -shell-escape diplom_gnuplot

