#!/bin/sh

awk '(NR == 1) || (FNR > 1)' *.csv > hh_positions.csv