###### tags: virtualbox, linux, mount, vboxsf
# Mount virtualbox shared folder

> `mount -t vboxsf -o rw,uid=$UID,gid=$(id -g) pool /data/pool`

Beispiel von server `stargazer`.

`pool` ist der virtualbox Ordername.
`rw`+ `uid...` sorgen für Schreibrechte mit dem aktuellen user. Lässt man das weg wird der Ordner als `root` gemountet.