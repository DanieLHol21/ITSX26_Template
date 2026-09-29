# Security Automation Analysis

## Metod / Rådata

Programmet analyserade dessa data källor: 

- data/suspicious_ips.txt
- data/access.log
- data/auth.log
- data/firewall.log

ip adresser från suspicious_ips läses in som indikatorer och därefter programmet kontrolerar loggar efter matchande "src =" ip adresser. Programmet använder en varibael för att räkna hur många gånger varje indikator förekommer. om en "src =" fält är tom eller saknas, räknas det som en felaktig rad.

## Observation 

Programmet hittade tre ip adresser från indikator listan i analyserad log filer. Adressen som dök upp mest var 203.0.113.15 som dök upp sex gånger, dem andra adresser 198.51.100.44 och 203.0.113.99 dök upp 2 och 1 gång.

En felaktig log linje var skippad eftersom dens src var tom

##Slutsats

Som vi kan se att Ip adresserna förekom i dem analyserade logfiler där ip adressed 203.0.113.15 var den som uppvisades felst gånger. Därför behövs den Ip adressed kanske få mer uppmärksamhet och bli föremål för vidare undersökning men bara för att det fanns flest gånger, är det inte bevis på skadlig aktivitet. En felaktig log linje upptäcktes också och skipades, vilket visar att felaktig data kan påverka analysen och resultat.

## Osäkerhet

Osäkerhet med analysen som var utförd är att bara för att en ip adress är en match betyder det inte att den är skadlig. Programmet kan endast kontrollera om ip adresser från indikatorlistan fanns i logfilerna. Programmet kan inte heller avgöra adressens avsikt. Den felaktiga loggen innebär att viss data var ofulständig och inte kunde analyseras av programmet.

## ALternativ förklaring

Samma mönster kan uppstå från andra orsaker än skadlig aktivitet. 1 användare från en IP adress eller kan generera flera händelser från samma ip eller det kan vara flera användare på samma publika Ip adressen som också kan leda till fler trafik från samma IP. Automatiserade processer eller testaktivitet kan ockkså skapa upprepade anslutningar som kan bli flaggad.

## Säkerhetsbetydelse

Resultat är relevanta eftersom dem pekar på matchningar mot indikatorlistan som kan hjälpa oss analysera och identifiera händelser som kanske behöver undersökas vidare. Faktumet att 203.0.113.15 dök upp flest gånger är en bra först steg i och är relevant för fortsatt granskning.  Resultatet bör dock användas bara som underlag för vidare analys och inte som bevis