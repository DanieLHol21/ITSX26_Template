# AI Security Case Investigation Case A: AI phishing

## Givna fakta, antaganden och verifieringsfrågor
### Fakta
Caset beskriver en komunal förvaltning som fick flera melj som ser ut komma frpn en intern. De som ha mottagit mejlet uppmanades att logga in via en länk. En medarbetare har klickat på länken men inte uppget sina uppgifter. Organisationen är inte säkert om mejlet var AI genererat
### Antaganden
Nätfiske är det mest uppenbara svaret på vad syftet med meljet är. I kursmaterialet står det att generativ AI kan användas för att skapa övertygandned och kontextanpasade phishing mejl som efterliknar intern kommunikatiuon och sen leder mottagare till skadliga webplatser. Detta är inte ett bevis på att AI har använts i just detta fall. Länken kan vara skadlig men destinationen och syftet har inte fastställts
### Verifieringsfrågor
- Är det sant att bara en medarbetare har klickat på länket i mejlet
- Var leder länken
- Är mejl adressen eller domänen legitim
- Kolla på interna logar och leta efter misstänkt aktivitet

## Tillgångar och händelsekedjan

tillgångar som kan bli påverkade
- Konto av medarbetarna 
- Känslig info som personnr, lösernord etc.
- Mejl adresser som kan starta en domino effect om mer och mer konto blir påverkade

### Händelsekedjan

**En potentiellt skadlig mejl skicaks :** Flera medararbetare får samma väl formulead mejl en länk som uppmanar dem att logga in via en länk för att beålla åtkomsten  till ett internt system

**En person klickar på länken och skriver in sina uppgifter :** En medarbetare klickar på länken. Enligt caset uppger personen att inga inloggningsuppgifter lämnades. Men om personen däremot hade lämnat sina uppgifter på en falsk webbplats skulle de kunna hamna hos en angripare

**Domino effekten börjar :** Om angriparens plan var att ta över så många konto och samla in så måpnga uppgifter han kan, då kan han t.ex sprida han länken vidare till andra medarbetare och eftersom mejlen då skulle kunna komma från en betrodd kollegas adress, det blir mer sannolikt att faktikst klicka på länken och ge bort sin info

**Möjliga konsekvenser :** Om fler medarbetare lämnar sina uppgifter kan fler jonton riskera att komprometteras. Det skulle kunna leda till att obehöriga får åtkomst till interna system och känlisg info av inte bara medarbetarna men även företagsinfo beroende på vilka behörigheter konto som dem har åtkomst till har

## CIA och riskbedömning
### CIA
**Confidentiality :** Kan påverkas om angripare får tillgång till intern info eller känslig info

**integrity :** Kan påverkas om angriparen får tillgång till konot och kan ändra installningar eller skicka vidare phishing mejl

**Availability :** Kan påverkas om angriparen loggar ut den faktiska användaren
### Riskbedömning
Risken med den här scenariot beror på om någon faktiskt ger sin info på en fake websida eller om länken är farlig som vi vet inte än.
Om vi bedömmer risken utifrån dem fakta som vi har nu är risken låg/medelhög.

Men om länken var farlig eller någon har gett bort sin info på fake websidan blir risken hög eftersom konsekvenserna kan bli allvarliga. Angriparen skulle potentiellt kunna använda stullna konto och inlog. uppgifter för att få åtkomst till kommunens interna system och info

## CIS mapping

## Prioriterade åtgärder

## Teksnisk koppling



