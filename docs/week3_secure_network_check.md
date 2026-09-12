# Secure Network Check

## Del A — Miljöbeskrivning
Jag använder linux i VM
Lokala LinuxMiljön ger Vm en ip-adress som med hostname -I kan vi se att daddressed är 10.0.2.15 och gateway 10.0.2.2
127.0.0.1 är den lokala adressedn, 10.0.2.15 är en privat ip som använda i den lokala nätverket och en publik i andvända för kommunikation mot interent 
## Del B — Manuella observationer
 hostname -I visar både ipv4 och ipv6 address

 ip route stadnardvägen går via gateway 10.0.22 genom interface enp0s3

 nslookup example.com översatt example.com till fler ipv4/6 addresser

 ss -tuln visar all portar som lyssnar b.a. ssh på 22 och dns på 53

 curl http://127.0.0.1:8080 om det är på nås testservern 

 ps visar processer i den aktuella terminalen 

## Del C — Bash-verktyget

Scriptet använder variabler, funktioner, if statements och en loop för att köra nätverkskontrollerna. Det kontrollerar IP/gateway, DNS, lokal tjänst och  portar sen loggar resultaten. Scriptet använder även exitkoder och cleanup för att avsluta den temporära testtjänsten.

## Del D — Testning
jag har testat skriptet med 2 normal fall och 2 kontrollerad felfall 
Normal 1 DNS uppslaget borde lyckas och Ok log ska skrivas -> resultat example.com gav OK dns res. successful for domain

Normal 2 127.0.0.1:8080 svarar OK när testet körs -> svar OK Local service responding on 127.0.0.1:8080

Fel 1 kör dns med fakesite.invalid, förväntat FAIL -> FAIL DNS resolution failed for domain: fakesite.invalid

Fel 2 avsluta port 8080 och kör igen förväntat no response -> WARN no local service responding on 127.0.0.1:8080
## koppling till vecka 36
## Hardening
efter ss -tuln förväntar jag att bara nödvändiga portar ska vara aktiva. De som var aktiva var bl.a 22 och 53

## backup and recovery
efter en återställnign kör jag ip ropute for att se om mutt VM fungerar och sen en command foör att se om DNS fungerar som getent eller nslookup

## Del E — CIA-analys

C - nätverksutdata kan innehålla känsliga info om datorn som anvädar konto, portar som är öppna eller ip adresser, i verktyg som jag byggd använda bara info som behövs för att köra alla kontroller

I -  loggar hjälper m,ed integritet eftersom dem bidrar till spårbarheten av varje kontroll. Varje kontroll får t.ex tidstämplar, status och resultat loggad som hjälper att se vad som kontrollerades och hur det gick. git hör det möjligt att se vilka ändringar har hänt och även gå tillbaka till en gammal version. Statusar gör det lättare att tolka resultat det är lättare att läsa WARN eller OK än att läsa hela outputen och försöka tolka vad som har hänt.

A - DNS bara översätter ett domän till en IP adress, route visar om vi har en fungerande route till andra nätverk och  curl för att se om vår port kan nås

avvägnning om vi har många säkerhetåtgärder och vår system har en tight security kan det också vara svår att nå den om vi behöver nå portat eller annat som kan behövas för säkerhets skull alltså våra firewall regler kan blockera även "bra" trafiken

## Del F — Reflektion

loklatjänsta kontroll gav mest värde eftersom jag kunde testa både normal/felfall

/

den svåraste var WARn från 8080 och det tog lång tid för jag insåg att porten var inte igång och därför fick jag ett WARN

kanske mer exitkoder så det är ännu lättare att veta vad som händer 

edet kan avädnas för enkla och snabba kontroller av systemet efter vi ändrar något och vill snabbt se om allt fortfarande fungerar

## AI-användning

ai använde jag för att hjälpa mig med långa exit koder eller att tolka vad resultat från t.ex curl visar. Också att hjälpa mig med bash commandon och hur man ska köra dem och när, jag återavände mycket av koden som fanns i exemple papper och sen jämförde resultatet med den förväntade resultate