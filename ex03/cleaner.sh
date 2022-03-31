#!/bin/sh
if [ $# -eq 0 ]
  then
    CSV_FILE='../ex02/hh_sorted.csv'
  else
    CSV_FILE=$1
fi

GRADES='(Junior|Middle|Senior|junior|middle|senior)'
FIRST_TWO_COLUMN='"[0-9]*","[^"]*",'
ADRESS=$FIRST_TWO_COLUMN'"[^"]*'$GRADES'[^"]*",'

sed -r '/'$ADRESS'/!s~('$FIRST_TWO_COLUMN')"[^"]*"~\1"-"~;
/'$ADRESS'/{
h;
s/('$FIRST_TWO_COLUMN').*/\1/;
H;
g;
s/([^\n]*)\n.*/\1/;
s/'$ADRESS'//;
H;
g;
s/([^\n]*)\n.*/\1/;
s/('$GRADES')|(.)/\1/g;
s/'$GRADES'/\1\//g;
s/'$GRADES'\/$/\1/;
H;
x;
s/[^\n]+\n([^\n]+)\n([^\n]+)\n([^\n]+)/\1"\3",\2/;
}
' ${CSV_FILE} > hh_positions.csv