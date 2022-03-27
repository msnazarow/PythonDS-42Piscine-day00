#!/bin/sh
if [ $# -eq 0 ]
  then
    JSON_FILE='../ex00/hh.json'
  else
    JSON_FILE=$1
fi

jq -rf filter.jq ${JSON_FILE} > hh.csv
