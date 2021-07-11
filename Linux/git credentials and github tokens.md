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

### Achtung: Aktivierung des creditial Speicherns gilt pro repository! 
Es muss also für jedes Repository (erneut) ausgeführt werden.

```
git config credential.helper store
```
Default Speicherort: `~\.git-credentials`

Custom Speicherort: zum Commando Parameter `--file <filename>` hinzufügen.

Wird jetzt bei einer Git-Aktion ein passwort benötigt muss/sollte das neue Github token verwendet werden. Dabei werden aufgrund des vorherigen `git config` Befehls die credentials in der Datei `~\.git-credentials` gespeichert.

Die darauf folgende nächste Git-Aktion, welche ein Passwort benötigt, sollte dann keine Abfrage der credentials mehr zur Folge haben.

