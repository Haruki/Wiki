###### git remote url change moved new location cli

## GIT warning: "This repository moved. Please use new location"

## *Beispiel*:

![git repository moved](https://www.dropbox.com/s/o9dl09wyfs6baom/2021-07-git_repository_moved.png?raw=1 "git example repository moved")

## Lösung: die aktuelle remote url muss geändert werden.

Alte URL abfragen: `git config --get remote.origin.url`

Ändern auf neue: `git remote set-url origin <neue url>`

Die neue URL wird in der Warnmeldung angegeben.