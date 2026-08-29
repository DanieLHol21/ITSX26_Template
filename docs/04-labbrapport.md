# 04 Labbrapport

## 1. Sammanfattning

Beskriv kort vad labben gick ut på och vad du gjorde.

## 2. Pipeline

- Vad triggar pipeline?

den triggas när kod pushas/pulls från main eller även manuellt

- Vilka steg körs?

Kod hämtas, sen startas ubuntu med python, sen pip installeras reqs. och testerna körs

- Vad händer om ett steg misslyckas?

pipeline bryts och de nästkommande steg körs inte

- Hur kan pipeline stödja säkerhet?

det kan upptäckate problem/kontrollera koden innan den ändras

## 3. Säkerhetskontroller

- Vilka kontroller körde eller granskade du?

security_check.sh - rapporterar att grund kontoller passerade
basic_config_check.py - godkände konfigurationen
evidence_collector.sh - skapade .txt med filer so finns i repon

- Vad blev resultatet?

all godkännes

- Vilka förbättringar föreslår du?

security_check.sh och basic_config:check.py körs automatiskt reden vid pull request till main men evidence collector.sh behövs köras manuellts, det är kanske en sak som kan förbättras

## 4. Dependency och supply chain

- Vilket beroende eller simulerat alert analyserade du?

alertet om example_lib 

- Vad var risken?

att en äldre version kanske har kända säkerhetsproblem

- Vad bör göras innan uppdatering accepteras?

kontrollera vad som ändras i nya version/ om den nya vesion behöver nya tester att fungera

## 5. Code scanning och AI-stöd

- Vilken varning analyserade du?

varningen att config filen innehåller en placeholder for en secret

- Vad föreslog AI?

att inte lagra riktiga secrest /lösenord i repot

- Vad verifierade du själv?

kontorllerade conif.example.json och såg att secret_value använder en placeholder istället för riktig secret

- Vilken egen slutsats drog du?

att placeholders är säkrare i config som finns i repot

## 6. Guardrails

- Vilken ändring granskade du?
- Bör ändringen accepteras, ändras eller stoppas?
- Varför?

## 7. Avslutande reflektion

- Vad lärde du dig om DevSecOps?

säkerhets bör vara del av hela utvecklingsprocessen inte bara något du gör på slutet.

- Hur kan AI vara ett stöd?

Med att förklara tekniska begrrepp, tolka olika scripts etc.

- Vilka risker finns med att lita för mycket på AI?

ai kan ge felaktiuga info och säga den till dig som om det var en fact

- Hur kan automatiserade kontroller bidra till säkrare leveranser?

den kan uptäcka problem tidigt och den kan göra dem enkla men tidskrävande tester som ingen vill göra men är viktiga
