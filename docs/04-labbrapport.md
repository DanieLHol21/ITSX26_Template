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
- Vad var risken?
- Vad bör göras innan uppdatering accepteras?

## 5. Code scanning och AI-stöd

- Vilken varning analyserade du?
- Vad föreslog AI?
- Vad verifierade du själv?
- Vilken egen slutsats drog du?

## 6. Guardrails

- Vilken ändring granskade du?
- Bör ändringen accepteras, ändras eller stoppas?
- Varför?

## 7. Avslutande reflektion

- Vad lärde du dig om DevSecOps?
- Hur kan AI vara ett stöd?
- Vilka risker finns med att lita för mycket på AI?
- Hur kan automatiserade kontroller bidra till säkrare leveranser?
