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
kan inte längre logga in på vm via ssh
### Hur upptäcker jag problemet?
connection misslyckas
### Vad kontrollerar jag först?
först korntrollera om vm är på/ nätverka fungerar eller köra sudo systemctl status ssh
### Hur återställer jag åtkomst?
om problemet är bara att den inte var igång kan jag köra sudo systemctl start ssh eller kanske kola om port forwarding är på rätt port/ip
### När behöver jag hjälp?
om ingen av dessa fungerar
---
## 5. Backup
### Vad har jag sparat?
dokumentation är sparad i github och jag kan enkelt skapa en kopia av VM i virtualbox
### Vad finns i GitHub?
docs
### Vad kan återskapas?
vm kan jag skapa en ny i virtualboxen och konfigurera den på samma sätt, filer i github kan jak klona
### Vad går inte att återskapa?
saker som inte var sparade eller har en kopia
---
## 6. Cleanup
### VM-instans
jag kör lokalt så det gäller bara att stänga av vm instansen
### Diskar
virtuella disk finns lokalt på min dator
### Backuper
eftersom jag har inte gjort nåt viktigt i VM har jag ingen backup
### Publika IP-adresser
ingen public IP används för lokal VM
---
## 7. CIA-reflektion
### Konfidentialitet
konfidalitet har jag jobbat när jag använd SSH för att säkert ansluta mig till VM eller när jag ändrade test.txt rättigheter
### Integritet
integritet i den här labban kan jag kopla till hur jag kontrollerade användarna, kollade vilka processer var aktiva och kollade på loggar 
### Tillgänglighet


---
## 8. Reflektion
### Vad fungerade bra?
Köra VM lokalt fungerade bättre än vad jag trodde
### Vad var svårt?
inte svårt men lite krångligt att kopla SSH den första gången
### Vad lärde jag mig?
några enkla commands i linux och cybersäkerhet begreeep, vad de menar och hur dem anvands