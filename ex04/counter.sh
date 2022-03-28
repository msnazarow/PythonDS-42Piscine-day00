#!/bin/sh
if [ $# -eq 0 ]
  then
    CSV_FILE='../ex03/hh_positions.csv'
  else
    CSV_FILE=$1
fi

FIRST_TWO_COLUMN='"[0-9]*","[^"]*",'
ADRESS=$FIRST_TWO_COLUMN'"[^"]*'$GRADES'[^"]*",'

(echo "name,count" && sed -rn '/"[0-9]*","[^"]*","-"/!s/"[0-9]*","[^"]*",("[^"]*"),.*/\1/p;' $CSV_FILE | sort | uniq -ci | sort -rn | sed -r 's/([0-9]+)(.*)/\2,\1/; s/^[ \t]*//') > hh_uniq_positions.csv