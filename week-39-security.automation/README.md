# Security Automation Report

## Syfte
 Syftet med denna program är att automatisera delar av program med Python. Programmet är enkel och läser loggfiler, tar ut Ip adresser och jämför dem med Ip adresser från andra logfiller. Den coskå räknar hur många gånger Ipn fanns i loggilerna och på slutet resultaten sammanställs i en rapport

 ## Dataset
 Dataset A (basic) har använts i denna program. Den innehåller 4 logfiler 

- `data/suspicious_ips.txt`
- `data/access.log`
- `data/auth.log`
- `data/firewall.log`

`data/suspicious_ips.txt` är filen som har IP som är misstänkta att vara en hot.

Alla logfiler har an "src" som blir kontrollerad av programmet för att se om de matchar Ip i `data/suspicious_ips.txt`

### Python version

Programmet är skriven i Python 
Python-version:
`3.14`

Versionen kan kontrolleras med:

```bash
python --version ```
```

## Körinstruktioner

Programmet körs från projektets rot och körs med 
```bash
python src/security_report.py
```
och den lägger rapporten i `output/security_report.txt`

## Struktur

```bash

week39-security-automation/
│
├── README.md
├── data/
│   ├── auth.log
│   ├── access.log
│   ├── firewall.log
│   └── suspicious_ips.txt
├── src/
│   └── security_report.py
├── output/
│   └── security_report.txt
└── docs/
    └── analysis.md
``` 

## Testing

Programmet var testad med 3 test 

### Test 1 
IP `203.0.113.15` från listan används för att säkerställa att den blir räknad rätt antal gånger

### Test 2
IP adressen som inte finns i `data/suspicious_ips.txt`används för att säkerställa att den inte kommer räknas

### Test 3
En log som saknar `src` används för att säkerställa att raden hoppas över och att varibeln som räknar skippade logradder funkar
¨

## Kända begränsingar

Den största begränskningen är att programmet bara letar efter en matchning I loggfiler. Bara för att det är en träff betyder det inte att IP är farlig eller en hot. Programmet kan inte avgöra avsikten bakom händelsen. 

## Ai användning

### Programeringshjälp
Här har AI använts för att förklara syntax i Python för det flesta men också att hjälpa med errors eller strukturering

### Rapporthjälp
Här har AI använts för att sammanfatta tankar eller förtydliga mina tankar. Också hjälpt mycket med README struktur och .md syntax