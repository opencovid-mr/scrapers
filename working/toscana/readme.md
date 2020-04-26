### Estrazione andamento comulato deceduti provinciale Toscana

fonte dati: https://www.ars.toscana.it/covid19/

Il formato utilizzato da ARS Toscana è il seguente

        {
            "data": "gg\/mm",
            "dimessi": null,
            "deceduti": null,
            "positivi": "x"
        },

Il valore di "positivi" deve essere in realtà inteso come numero cumulato di deceduti alla data indicata.

A partire dal 18.04 disponibile grazie a OnData il numero di decessi giornaliero comunale
https://github.com/ondata/covid19italia/tree/master/webservices/regioneToscana
