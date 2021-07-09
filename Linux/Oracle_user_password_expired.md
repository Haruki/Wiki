###### oracle linux user config expired

## Oracle user password expired

disable Passwort expiration:<br>

1. Profil ermitteln und für das Profil (meist DEFAULT) die Passwort expiration disablen:

```
select profile from DBA_USERS where username = '<username>';
alter profile <profile_name> limit password_life_time UNLIMITED;
```

2. user entsperren:

```
alter user user_name identified by new_password account unlock;
```

3. das gleiche gilt für user `system`, welcher für die bestfilmz backups verwendet wird.
Hier kann die Änderung ebenfalls nur von `sys` durchgeführt werden. <br>
Zusätzlich ist hier die connection direct auf der oracle maschine notwendig, damit folgender Fehler vermieden wird:<br>
https://jameshuangsj.wordpress.com/2017/07/07/ora-65066-the-specified-changes-must-apply-to-all-containers-in-12c/

```
sqlplus sys/ora18c as sysdba
alter user system identified by oracle account unlock;
```

