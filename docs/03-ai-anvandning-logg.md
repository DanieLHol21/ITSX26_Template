# 03 AI-användningslogg

## Instruktion

Dokumentera varje gång du använder AI som stöd i labben.

| Tillfälle | Fråga/prompt till AI | Sammanfattning av AI-svar | Vad kontrollerade du själv? | Vad ändrade eller valde du bort? | Slutsats med egna ord |
|---|---|---|---|---|---|
| 1 | fråga vad `ci.yml` gör | AI sa vilka steg pipleine gör | läste `ci.yml` själv och körde pytest själv | / | pipelinen automatiskt tastar kod i en separat miljö när vissa händelser inträffar ex. push pull reqs |
| 2 | fråga om vad filer i `/scripts` kontrollerar | AI förklarade att de kontrollerar filer secrets och config och evidence script samlar infot om repon | körde sjäklv all 3 script och kontrollerare resultatet | / | säkerhets script kan köra enkla kontorller automastisk och upptäcka vissa problem tydigt |
| 3 | fråga om CIS controls och hur säkerhetsåtgärder kan kopplas till dem | Ai förklarade att det är ett ramverk med rekomenderade åtgärder| jämförde förslagen med de säkerhetskontroller och filer som finns i report och coksö kollade docx om Cis på canvas | / | CIS controls bör användas som ramverk for att strukturera säkerhetsarbetet |

## Egen reflektion

hjälpsamt när det finna många filer/scripts att förstå och enkelt att förklara vad de gör
