##### linux library lib so qt libqt5core

## Can't load shared library libQt5Core.so.5


### *Fehlermeldung*:

```
error while loading shared libraries: libQt5Core.so.5: cannot open shared object file: No such file or directory
```

Tritt z.B. bei der Verwendung von `kdiff3`(3way merge) oder `okular`(PDF Editor) auf.

### *Lösung*: (Arch)

```
sudo strip --remove-section=.note.ABI-tag /usr/lib/libQt5Core.so.5
```

Siehe auch Artikel auf [StackOverflow](https://stackoverflow.com/questions/63627955/cant-load-shared-library-libqt5core-so-5)
