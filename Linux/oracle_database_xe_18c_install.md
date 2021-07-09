###### oracle linux install xe database

## Oracle Database XE 18c Installation

Siehe auch Artikel: Oracle DropBox Backup

Basis ist ein frisch installiertes Oracle Linux 7.6. (mit Gnome GUI und Developer Tools)
Das Oracle Linux laeuft auf VirtualBox.
Guest Additions sind installiert (ohne 2D Beschleunigung).

Ausfuehrliche Anleitung von [Oracle:](https://docs.oracle.com/en/database/oracle/oracle-database/18/xeinl/procedure-installing-oracle-database-xe.html)


Firewall abschalten (fuer Zugriff von aussen):

```
systemctl stop firewalld
systemctl disable firewalld
```



Alle Updates wurden eingespielt:

```
yum update -y
```

--> Snapshot machen.

''Teil2:''

Der verwendete Hostname der Oracle Maschine muss in der Datei `/etc/hosts` eingetragen sein mit der IP-Adresse mit der von aussen zugegriffen wird (static dhcp Adresse):

```
10.0.1.31    ora18c.localdomain     ora18c
```

Dies ist erforderlich, damit das Konfigurationsskript am Ende den Listener erstellen kann. Der verwendete Name muss auch genauso in der Datei `/etc/hostname` eingetragen sein.



Oracle Database preinstall:

```
yum install oracle-database-preinstall-18c
```

''Teil3:''

Von der Oracle Webseite das RPM Paket fuer Oracle XE 18c [downloaden](
https://www.oracle.com/technetwork/database/database-technologies/express-edition/downloads/index.html)

RPM installieren:

```
yum localinstall /home/oracle/oracle-database-xe-18c-1.0-1.x86_64.rpm
```

--> RPM löschen , Snapshot machen


''Teil4:''

Datenbank erstellen und konfigurieren.

Die Konfiguration der Datenbank wird festgelegt in der Datei:

```
/etc/sysconfig/oracle—xe–18c.conf
```

Standardwerte: Datenbankname: `XEPDB1` und SID: `XE`
Auch der EnterpriseManager laeuft auf Port 5500 (Flash Player erforderlich)


Mit dem Konfigurationsskript wird die Konfiguration angewendet:

```
/etc/init.d/oracle-xe-18c configure
```

Das Skript fragt auch die fuer die accounts `sys`, `system` und `pdbadmin` zu erstellenden passwörter ab. (gleiches passwort fuer alle).

Die Dateien `tnsnames.ora` und `listener.ora` muessen ggf. noch angepasst werden, damit dort die korrekten Werte fuer host (10.0.1.31) und port (1521) stehen.
Die Dateien liegen in `/opt/oracle/product/18c/dbhomeXE/network/admin/`.


''Teil5:''

Umgebungsvariablen und Verbindung.

Fuer user oracle folgendes script erstellen und mit der `.bashrc` ausfuehren:

```
#!/bin/bash
export ORACLE_HOME=/opt/oracle/product/18c/dbhomeXE
export PATH=$PATH:$ORACLE_HOME/bin
export ORACLE_SID=XE 
export ORAENV_ASK=NO 
. /opt/oracle/product/18c/dbhomeXE/bin/oraenv
```

`ACHTUNG: Mit der "dot space" variante werden scripte aufgerufen, wenn statt einer neuen shell die parentshell verwendet werden soll. Nur so ist es moeglich in skripten Umgebungsvariablen dauerhaft zu setzen.`

Datenbank starten (als root):

```
/etc/init.d/oracle-xe-18c start
```

Datenbank stoppen (als root):

```
/etc/init.d/oracle-xe-18c stop
```

connection string: `name/pass@10.0.1.31:1521/xepdb1`

