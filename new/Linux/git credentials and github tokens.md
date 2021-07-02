###### git github credentials user password token

## Using and storing GitHub token

Ein Github token ersetzt das github passwort 1:1.

D.h. es wird bei der Abfrage des passworts statt des original passworts verwendet.

### *Token generieren:*

Auf `github.com` > user icon oben rechts > settings > developer settings > personal access tokens

Button: `Generate new token`

Token sind spezifisch für einen konkreten git-client auf einer bestimmten Maschine.

---

### *Git credentials speichern*

Folgender Befehl aktiviert das Speichern der Credentials bei der nächsten Git-Aktion für die eine Authentifizierung notwendig ist (z.B. `git push`)

```
git config credential.helper store
```
Default Speicherort: `~\.git-credentials`

Custom Speicherort: zum Commando Parameter `--file <filename>` hinzufügen.



