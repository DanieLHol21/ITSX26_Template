## 1. Min lokal Linux miljö

- VM-namn: VM
- Operativsystem: Ubuntu 26.04.1 
- Shape: VirtualBox VM, lokal maskin
- Inloggningsmetod: SSH från Windows via virtualBox NAT och port forwarding (127.0.0.1:2222 till SSH-port 22 på Ubuntu)
---
## 2. Linux-kommandon
| Kommando | Vad visar det? | CIA-koppling |
|-----------|-----------|-----------|
| whoami | visar nuvarande användaren | Confidentiality, kontollerar identitet  |
| hostname | Visar vms namn | Confidentiality, kontollerar identitet; Integrity, verifiera att jag är på rätt system |
| pwd | printar working directoryn | Integrity, verifiera att jag är på rätt dir |
| uname -a | OS info och kernel vers. | Integrity, verifiera att jag är på rätt os/vers. |
| uptime | visar hur länge systemet var aktiv | Availability, visar om systemet är tillgänlgi |
---
## 3. Hardening
| Kontroll | Risk | Vad gjorde jag? | Hur verifierade jag? | CIA |
|-----------|-----------|-----------|-----------|-----------|
| Identitet och behörigheter | användaren kan ändra viktigadelar i systemet om dem har för höga rättigheter | kollade vilka grupper och id jag har genom id och groups | kollade på outputten av dem 3 komandon | C behörighet ska begränsas och bara ge rättigheter som användarna behöver |
| Filrättigheter | användarna kan få tillgång till filler/ändra dem | skapade fil och andrade rättigheter med chmod 600 | använde ls -l test.txt som visade  -rw------- som innebar at bara ägaren kan läsa och ändra filen | C - filen är begränsat |
| Systemuppdateringar | gamla versioner kan innehålla kända säkerhetshål | körde sudo aptmupdate för att updatera och apt list --upgradeable att se listan men updateringar | kollade listan efter apt update var klar | I - uopdateringar hjälper att hålla ystement säker |
| Processer | processer kan använda resurser eller omd et är en skaldig processkan dem påvberka systemet | Jag kontrollerade vilka processer är aktiva med ps aux | head | kommandon visade all aktiva procersser  | a- tillgänglighet, processer kan använda dators resursser och påverka systemnts tillgä, |
| Loggar | utna loggar är det svårt att hitta vad gick fel eller vad är fel med systemet | kollade vilka log filer finns med ls /var/log | kollade vilka loggar fanns i listan | I- logar hjälper med undersökning |
---
## 4. Recovery-plan
### Vad kan gå fel?
### Hur upptäcker jag problemet?
### Vad kontrollerar jag först?
### Hur återställer jag åtkomst?
### När behöver jag hjälp?
---
## 5. Backup
### Vad har jag sparat?
### Vad finns i GitHub?
### Vad kan återskapas?
### Vad går inte att återskapa?
---
## 6. Cleanup
### VM-instans
### Diskar
### Backuper
### Publika IP-adresser
### GitHub-evidens
---
## 7. CIA-reflektion
### Konfidentialitet
### Integritet
### Tillgänglighet
---
## 8. Reflektion
### Vad fungerade bra?
### Vad var svårt?
### Vad lärde jag mig?