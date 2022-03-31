#!/bin/sh
if [ $# -eq 0 ]
  then
    CSV_FILE='../ex03/hh_positions.csv'
  else
    CSV_FILE=$1
fi

awk '
BEGIN{ FS="\",\"|T"}
NR==1{ header = $0 }
NR!=1{
file = $2".csv"
if (!($2 in files)) {
  files[$2]
  print header > file
  }
  print >> file
}
' $CSV_FILE