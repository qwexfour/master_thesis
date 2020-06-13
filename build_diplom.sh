#!/bin/bash

set -x

pdflatex -shell-escape diplom
bibtex diplom
pdflatex -shell-escape diplom
pdflatex -shell-escape diplom

