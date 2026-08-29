# 01 Riskbedömning

## Instruktion

Välj minst tre observationer från labben. Beskriv varje observation, koppla den till CIA-triaden och föreslå en rimlig åtgärd.

| Observation | Påverkan på CIA | Riskbeskrivning | Föreslagen åtgärd | Prioritet |
|---|---|---|---|---|
| Exempel: debug-läge aktiverat | Konfidentialitet, riktighet | Debug kan exponera teknisk information | Säkerställ att debug är false i labbkonfig | Medel |
| lösenord eller private keys i koden| konfidentalitet | Känsliga uppgifter kan läcka genom GitHub | lägg allt känslig info i   .gitignore | medel/hög |
| osäkra konfig inställningar | Alla 3 | Config filen om den är osäker t.ex om den har debug enabled  | kontrollerar regelbundet att den är updaterad | medel|
| Brist på automatisk evidence kontroll | Integritet4 | viktig säkerhetsinfo kanske inte samlas in när förändringar görs | kör evidence_collector.sh automatiskt vid pull request | Medel |

## Reflektion

Beskriv kort hur du prioriterade riskerna.

Prioterad utifrån hur allvarliga konskekvenser kan bli. 