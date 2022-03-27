#!/bin/sh
BASE_URL=https://api.hh.ru
if [ $# -eq 0 ]
  then
    VACANCY='data scientist'
  else
    VACANCY=$1
fi

curl -H 'User-Agent: sbertrud' -G "${BASE_URL}/vacancies" \
 --data-urlencode 'per_page=20' \
 --data-urlencode 'page=0' \
 --data-urlencode 'search_field=name' \
 --data-urlencode "text=${VACANCY}" \
 | jq > hh.json