###### oracle database linux log config

## Oracle Audit Trail

Bei aktivierter Audit-Funktion kann unter Umständen der Festplattenplatz vollaufen.

Verzeichnis: (ggf. alles Löschen)<br>

```
/u01/app/oracle/diag/rdbms/orcl/orcl/incident
```

Konfigurieren:

```
https://dbmachine:5500/em
```

Unter Server/Initialization Parameters den Wert für `AUDIT_TRAIL` abschalten (`NONE`).<br>
Ggf. direkt im `SPFile` Reiter.<br>
DB muss danach neu gestartet werden.
