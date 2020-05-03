#!/bin/bash

folder="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

mkdir -p "$folder"/rawdata

curl -c "$folder"/cookie "https://patn.maps.arcgis.com/apps/opsdashboard/index.html#/30d39ef2c83a47d285512a4685235843"

date=$(curl -b  "$folder"/cookie 'https://patn.maps.arcgis.com/sharing/rest/content/items/30d39ef2c83a47d285512a4685235843/data?f=json' -H 'Connection: keep-alive' -H 'Accept: application/json, text/javascript, */*; q=0.01' -H 'Sec-Fetch-Dest: empty' -H 'X-Requested-With: XMLHttpRequest' -H 'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36' -H 'Sec-Fetch-Site: same-origin' -H 'Sec-Fetch-Mode: cors' -H 'https://patn.maps.arcgis.com/apps/opsdashboard/index.html#/30d39ef2c83a47d285512a4685235843' -H 'Accept-Language: it,en-US;q=0.9,en;q=0.8' --compressed | jq '.widgets[5].text' | grep -o "[0-9]\{2\}/[0-9]\{2\}/[0-9]\{4\}" | tr / -)

curl -b  "$folder"/cookie 'https://services5.arcgis.com/9T5RxYdubL4b1BrS/arcgis/rest/services/attuale/FeatureServer/0/query?f=json&where=(contagi%20%3E%200)%20AND%20(contagi%3E0)&returnGeometry=false&spatialRel=esriSpatialRelIntersects&outFields=*&orderByFields=nome%20asc&resultOffset=0&resultRecordCount=300&resultType=standard&cacheHint=true' -H 'Connection: keep-alive' -H 'Accept: application/json, text/javascript, */*; q=0.01' -H 'Sec-Fetch-Dest: empty' -H 'X-Requested-With: XMLHttpRequest' -H 'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36' -H 'Sec-Fetch-Site: same-origin' -H 'Sec-Fetch-Mode: cors' -H 'https://patn.maps.arcgis.com/apps/opsdashboard/index.html#/30d39ef2c83a47d285512a4685235843' -H 'Accept-Language: it,en-US;q=0.9,en;q=0.8' --compressed >> "$folder"/rawdata/$date.json
