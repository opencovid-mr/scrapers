# Estrazione andamento comulato deceduti provinciale da https://www.ars.toscana.it/covid19/
# A partire dal 18.04 disponibile grazie a OnData il numero di decessi giornaliero comunale
# https://github.com/ondata/covid19italia/tree/master/webservices/regioneToscana


#!/bin/bash

province=(AR FI GR LI LU MS PI PT PO SI)

date=$(date '+%Y-%m-%d')

folder="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

curl -c "$folder"/cookie "https://www.ars.toscana.it/covid19/aggiornamenti-e-novita-sul-numero-dei-casi-per-provincia-e-per-asl-della-regione-toscana"

for pr in "${province[@]}"

do
	curl -b "$folder"/cookie 'https://www.ars.toscana.it/covid19/actions/loadStacked.php?nome_indicatore=grafico24&tipo_zona=asl&pos=bottom&sigla_provincia='"$pr"'' -H 'Connection: keep-alive' -H 'Accept: application/json, text/javascript, */*; q=0.01' -H 'Sec-Fetch-Dest: empty' -H 'X-Requested-With: XMLHttpRequest' -H 'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36' -H 'Sec-Fetch-Site: same-origin' -H 'Sec-Fetch-Mode: cors' -H 'Referer: https://www.ars.toscana.it/covid19/aggiornamenti-e-novita-sul-numero-dei-casi-per-provincia-e-per-asl-della-regione-toscana' -H 'Accept-Language: it,en-US;q=0.9,en;q=0.8' --compressed >> $pr'-'$date.json

done
