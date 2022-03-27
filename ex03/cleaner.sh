if [ $# -eq 0 ]
  then
    CSV_FILE='../ex02/hh_sorted.csv'
  else
    CSV_FILE=$1
fi

GRADES='(Junior|Middle|Senior|junior|middle|senior)'
FIRST_TWO_COLUMN='("[^"]*",){2}'
ADRESS=$FIRST_TWO_COLUMN'"[^"]*'$GRADES'[^"]*",'

#sed -r '/'$ADRESS'/!s~('$FIRST_TWO_COLUMN')"[^"]*"~\1"-"~g; /'$ADRESS'/s~('$FIRST_TWO_COLUMN')"([^"]*'$GRADES'[^"]*)+"~\1"SOSAT"~2' ${CSV_FILE}

#GRADES='Junior|Middle|Senior|junior|middle|senior'
#FIRST_TWO_COLUMN='("[^"]*",){2}'
#ADDRESS=$FIRST_TWO_COLUMN'"[^"]*'$GRADES'[^"]*",'
#MINUS_RULE='/'$ADDRESS'/!s~('$FIRST_TWO_COLUMN')"[^"]*"~\1"-"~;'
#sed -r $MINUS_RULE'/'$ADDRESS'/{s~('$GRADES')~ツ\1ツ~ig; s~".*ツ~~2}' ${CSV_FILE}

#echo "LOL KEK ;bac bac bac bac " | sed -rn '/.*a.*/ {s/(.*;)[^a]*a[^a]*/\1d /; l}'
#echo "LOL KEK ;qaq qbq qcq qaq; eat coocies" | sed -r ':label; s/;[^;]*(a|b|c)([^;]*);/;\1\2;/; h;l; tlabel;'
#echo -n "LOL KEK ;qqqqqqqMashabbbbbbbbbbbSashaeeeeeeeeeeeeeeeeeMashaffffff" | sed -rnz 'h;s/([^;]*;).*/\1/;s/\x00//;P;s/\n//; x; s/([^;]*;)(.*)/\2/;:label; s/(.*)(Masha|Sasha)(.*)/\2/g;x; tlabel; s/(.*)/\1\n/'
echo "LOL KEK ;qaq qaq qaq qaq " | sed -rnz 'H;s/([^;]*;).*/\1/; s/\x0//; p; x; s/([^;]*;)(.*)/\2/; s/[^a]*a[^a]*/a /g; s/(.*)/\1\n/;p'
#echo
#echo -e "\x00"

#echo "qqqqqqqMashabbbbbbbbbbbSashaeeeeeeeeeeeeeeeeeMashaffffff" | sed  -rn ':label;h;s/(.*)(Masha|Sasha)/\1/; x; s/(.*)(Masha|Sasha)(.*)/\2/;p;x; tlabel;'