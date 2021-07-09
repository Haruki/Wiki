###### git delta diff config

## DELTA as git diff replacement configuration

Dokumentation: [Delta auf GitHub](https://github.com/dandavison/delta)

### *1. Delta installieren*

```
yay -S delta
```

Achtung ggf. failed die Installation, dann `delta-git` wählen.

### *2. Git configurieren*

Datei `~\.gitconfig`

ergänzen:

```
[pager]
    diff = delta
    log = delta
    reflog = delta
    show = delta

[interactive]
    diffFilter = delta --color-only

[delta]
    features = side-by-side line-numbers decorations
    whitespace-error-style = 22 reverse
    navigate = true

[delta "decorations"]
    commit-decoration-style = bold yellow box ul
    file-style = bold yellow ul
    file-decoration-style = none
```

### Beispiel `.gitconfig` komplett (Homer wsl, 03.07.2021):

```
[user]
        email = hb@hb.gl
        name = haruki
[merge]
        tool = kdiff3
[diff]
        guitool = kdiff3
[pager] 
    diff = delta
    log = delta
    reflog = delta
    show = delta

[interactive]
    diffFilter = delta --color-only

[delta]
    features = side-by-side line-numbers decorations
    whitespace-error-style = 22 reverse
    navigate = true

[delta "decorations"]
    commit-decoration-style = bold yellow box ul
    file-style = bold yellow ul
    file-decoration-style = none
```

## *Verwendung*:

```
git diff --ignore-space-at-eol
```
Durch die Konfiguration wird bei `diff` dann `delta` aufgerufen.

Das `--ignore-space-at-eol` verhindert, dass git komplette Dateien wegen unterschiedlicher white space characters am line ending als unterschiedlich erkennt.
