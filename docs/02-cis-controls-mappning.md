# 02 CIS Controls-mappning

## Instruktion

Mappa minst två säkerhetsåtgärder från din riskbedömning mot relevanta CIS Controls på en grundläggande nivå.

| Säkerhetsåtgärd | Relevans för CIS Controls | Varför är kontrollen relevant? | Evidens i labben |
|---|---|---|---|
| Kontrollera att debug är avstängd | säker config | säker konfiguration gör att risken att systement blier exponerat misnakrgenom säkra inställningar | `scripts/basic_confi_check.py` |
| se till att inga lösenord/private keys hamnar i repon | skydd av autentiseringsuppgifter | det minskar risken att känsliga uppgifter läcker | `scripts/basic_confi_check.py` `scripts/security_check.sh` |

## Reflektion

Vad lärde du dig om ramverk som stöd för systematiskt säkerhetsarbete?

CIS controls kan användas för att strukturerea säkerhetsarbetet