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
- Kommunens interna och känsliga information
- Kommunens e-postsystem och e-postadresser

### Händelsekedjan

**En potentiellt skadlig mejl skicaks :** Flera medararbetare får samma väl formulead mejl en länk som uppmanar dem att logga in via en länk för att beålla åtkomsten  till ett internt system

**En person klickar på länken :** En medarbetare klickar på länken. Enligt caset uppger personen att inga inloggningsuppgifter lämnades. Men om personen däremot hade lämnat sina uppgifter på en falsk webbplats skulle de kunna hamna hos en angripare

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
**CIS 6 Access Control management :** Detta CIS handalr om hantering av åtkomst med huvud tanken att användare bör ha bara de behörigheter som dem behöver. Det relaterar till caset eftersom om ett medarbetarkonto skulle kunna ge angriparen tillgång till den info och de system som medarbetarn själv har åtkomst till. Om systemet är utfromat enligt principen om minsta access som CIS säger får angriparen begränsad åtkomst

**CIS 8 Audit Log Management :** Detta CIS handlar om att samla in och hantera loggar för att hjälpa oss att upptäcka eller identifiera misstänkt aktivitet i systemet. Det relaterar till caset eftersom kommunen hkan udnersöka innloggar för att kunna se om nån har föröskt looga in med stulna uppgifter eller om det har hänt misstänkta ändringar i nåns konto

**CIS 14 Security Awareness and Skills Training :** Detta CIS handlar om utbilnding av personer/medarbetare i "security Awareness" så att det blir lättare för de att känna igen möjliga hot. Det relaterar till caset eftersom medarbetarna behöver kunna identifiera misstänkta mejl eller liknande.

## Prioriterade åtgärder
### Tre Åtgärder
- 1: undersök om mejlet är farlig eller inte och om länken är farlig
- 2: informera medarbetarna att inte klicka på länkar tills undersökningen är klar
- 3: kolla deras loggar om någon misstänkt inlogg har sket
### Verifiering av Åtgärder
Åtgärd 1 kan verifieras genom att kontrollera avsändarens epost adress, vart länken leder och domänen om den leder till en webplats
Åtgärd 2 kan verifieras genom att kontrollera om medarbetarna fick mejlet med varningen eller genom att följa upp med en utbilding om nätfiske
Åtgärd 3 kan verifieras genom att granska inloggningloggar och kolla om det finns misstänkta inlogg

## Teksnisk koppling
AI kan användas för att skapa mer övertygande phishing mejl som ser ut att dem kom från intern. I caset kan detta förklara varför mejlen ser trovärdiga ut vi kan inte bekräfta att AI användes. Identitet och loggning är också relevanta eftersom ett komprometterat konto kan användas av en angripar evilket kan upptäckas genom att kontrollera inloggningsloggar efter misstänkt aktivitet

## Slutsats / Sammanfattning
Caset visar en phishingattcak mot en kummunal förvaltning. Medarbetarna fick mejl som såg ut att gomma från en intern it support och en av medarbetarna klickade på länken men inga inloggninguppgifter har lämnats ut

Den största risken är att ett konto skulle kunna koprometteras och användas för att få åtkomst till intern info eller att angriparen försöker spirda attacked vidare. Därdör är det viktigt att underöka loggar, informera medarbetarna om en potentielt attack och undersöka länken om det är faktiskt farlig