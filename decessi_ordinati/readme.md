## Decessi ordinati per data di decesso

*"I decessi certificati positivi da Covid-19 vengono probabilmente riportati nel database gestito dalla Protezione Civile con un certo ritardo temporale"* (da [Verso una stima di morti dirette e indirette per Covid](https://www.scienzainrete.it/articolo/verso-stima-di-morti-dirette-e-indirette-covid/enrico-bucci-luca-leuzzi-enzo-marinari))

Alcune regioni stanno pubblicando grafici con i decessi Covid-19 positivi ordinati per data del decesso e qui verranno raccolte le estrazioni dei dati per renderli disponibili in formato machine readable. I dati relativi all'ultima settimana non vengono inseriti in quanto considerati significativamente non consolidati.

Formato file .csv

        
            doy=giorno dell'anno a partire dal 01.01.2020
            data=data nel formato gg/mm/aa 
            decessi per data decesso=numero di decessi giornaliero per data di decesso
        


Fonte dati Regione Piemonte: https://twitter.com/PiemonteInforma/status/1256645682473115649/photo/4

Fonte dati Regione Puglia: https://www.regione.puglia.it/documents/65725/216593/Bollettino+Covid_02052020.pdf/

### Attenzione: 
* Dati estratti da grafici utilizzando [WebPlotDigitalizer](https://github.com/ankitrohatgi/WebPlotDigitizer)
* Regione Piemonte specifica che "i dati più recenti potrebbero essere sottostimati sia per il ritardo di notifica sia perché ancora non confermati dal test virologico"
* Regione Puglia specifica che "i dati raccolti sono in continua fase di consolidamento e, come prevedibile in una situazione emergenziale, alcune informazioni possono risultare incomplete o possono essere oggetto di modifiche"
