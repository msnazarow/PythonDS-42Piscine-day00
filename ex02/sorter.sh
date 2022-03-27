#!/bin/sh

if [ $# -eq 0 ]
  then
    CSV_FILE='../ex01/hh.csv'
  else
    CSV_FILE=$1
fi

(head -n 1 ${CSV_FILE} && tail -n+2 ${CSV_FILE} | sort --field-separator=',' --key=2,2 --key=1,1) > hh_sorted.csv