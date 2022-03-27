if [ $# -eq 0 ]
  then
    CSV_FILE='../ex02/hh_sorted.csv'
  else
    CSV_FILE=$1
fi

GRADES='(Junior|Middle|Senior|junior|middle|senior)'
FIRST_TWO_COLUMN='("[^"]*",){2}'
ADRESS=$FIRST_TWO_COLUMN'"[^"]*'$GRADES'[^"]*",'

#sed -r '/'$ADRESS'/!s~('$FIRST_TWO_COLUMN')"[^"]*"~\1"-"~g; /'$ADRESS'/s~('$FIRST_TWO_COLUMN')"([^"]*'$GRADES'[^"]*)+"~\1"\4"~g' ${CSV_FILE}



echo "LOL KEK ;bac bac bac bac " | sed -re ':x /.*a.*/s/(.*;)[^a]*a[^a]*/\1d / bx'