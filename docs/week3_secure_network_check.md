# Secure Network Check

## Del A — Miljöbeskrivning
Jag använder linux i VM
Lokala LinuxMiljön ger Vm en ip-adress som med hostname -I kan vi se att daddressed är 10.0.2.15 som används i VM i det lokala nätverket. Defualt route pekade på 10.0.2.2 gateway för trfik som ska lämna.
Förklara skillnaden mellan lokal adress, privat adress och publik adress där det är relevant.
Beskriv vilka begränsningar din miljö innebär för uppgiften och vilka skillnader du observerar jämfört med
lärardemonstrationen i OCI. Skillnader är förväntade och påverkar inte bedömningen när du förklarar dem korrekt.
## Del B — Manuella observationer
 hostname -I visar både ipv4 och ipv6 address

 ip route stadnardvägen går via gateway 10.0.22 genom interface enp0s3

 nslookup example.com översatt example.com till fler ipv4/6 addresser

 ss -tuln visar all portar som lyssnar b.a. ssh på 22 och dns på 53

 curl http://127.0.0.1:8080 om det är på nås testservern 

 ps visar processer i den aktuella terminalen 

## Del C — Bash-verktyget

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

## Del F — Reflektion

## AI-användning