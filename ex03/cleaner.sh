if [ $# -eq 0 ]
  then
    CSV_FILE='../ex02/hh_sorted.csv'
  else
    CSV_FILE=$1
fi

GRADES='Junior|Middle|Senior|junior|middle|senior'
FIRST_TWO_COLUMN='"[^"]*","[^"]*",'
ADRESS=$FIRST_TWO_COLUMN'"[^"]*'$GRADES'[^"]*",'
FIRST

sed -r '/'$ADRESS'/!s~('$FIRST_TWO_COLUMN')"[^"]*"~\1"-"~g; /'$ADRESS'/s~('$FIRST_TWO_COLUMN')"([^"]*('$GRADES')[^"]*)+"~\1"\2"~g' ${CSV_FILE}
#sed -r '/[^,]*,[^,]*,.*Senior|Middle|Junior.*/!s' $CSV_FILE