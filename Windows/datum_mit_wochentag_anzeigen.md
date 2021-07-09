###### windows date datum settings einstellungen taskbar taskleiste

## Windows 10 Datumsanzeige mit Wochentag

Beispiel:<br>
Statt:<br>

```
09.08.2019
```

soll in der Taskleiste unten rechts folgendes stehen:<br>

```
Fr.09.08.2019
```

Systemsteuerung > Zeit und Region (Alter Fenster Style)
Region > "Datums-, Uhrzeit- oder Zahlenformat ändern"
Weitere Einstellungen...
Tab "Datum"
Feld "Datumsformate > Datum (kurz)" ergänzen mit "TTT." vor dem bestehenden String

```
TTT.TT.MM.JJJJ
```


