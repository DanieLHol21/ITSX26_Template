# Simulerade alerts för labben

Dessa alerts är pedagogiska exempel. De ska användas för analys och dokumentation, inte för offensiv testning.

## Simulerat dependency-alert

**Rubrik:** Paketet `example-lib` använder en äldre version.  
**Risk:** En äldre dependency kan innehålla kända sårbarheter eller sakna viktiga säkerhetsfixar.  
**Uppgift:** Beskriv hur teamet bör resonera innan en uppdatering accepteras.

Frågor:

- Vilka tester bör köras?

kör dem automatiska testerna för att se om paketet fungerar efter updateringen

- Vilka delar av applikationen kan påverkas?

delart som använder example-lib om den har förändrats

- Hur dokumenterar du beslutet?

dokmentera vilken version avänds, den nya och föreslå varför updateringen är viktig.

## Simulerat code scanning-alert

**Rubrik:** Konfigurationsfil innehåller placeholder för secret.  
**Risk:** Om riktiga secrets råkar committas kan konfidentialitet påverkas.  
**Uppgift:** Förklara varför riktiga secrets inte ska lagras i repositoryt.

Frågor:

- Vilken del av CIA-triaden påverkas främst?

konfidentalitet

- Hur kan teamet förebygga detta?

Alrdig lagra secrets i repot om något känslig måste vara i repot ska det vara i gitignore eller liknande

- Hur kan en pipeline hjälpa till?

pipeline kan själv söka efter lösenord eller secrets inna koden pushas
