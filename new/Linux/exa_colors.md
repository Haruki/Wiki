###### exa ls replacement file listing

## EXA `ls` replacement configuration

### Install:

```
sudo pacman -S exa
```

### Farben konfigurieren (ANSI escape color codes / 3stellig):

```
256 colours

    38;5;nnn Foreground
    48;5;nnn Background
```

### Beispiel:

`export EXA_COLORS="uu=38;5;023:da=38;5;166"`

add to `.zshrc`

also add: `alias ls="exa --color"`

### Liste von Keys für EXA_COLORS:

![EXA color keys](https://www.dropbox.com/s/solrao36xmdi55w/2021-07-exa_keys_exa.png?raw=1 "EXA color keys")

### ANSI escape color codes wikipedia:

![ANSI colors (wikipedia)](https://www.dropbox.com/s/o0o2mx74fxcn1pl/2021-07-03%2000_32_06-ANSI%20escape%20code%20-%20Wikipedia_EXA.png?raw=1 "EXA color keys")


### ANSI escape color codes foreground:

![ANSI colors (wikipedia)](https://www.dropbox.com/s/smhdru8ivtzkd5a/2021_07_ANSI_colors_foreground_EXA.png?raw=1 "EXA color keys")

### ANSI escape color codes background:

![ANSI colors (wikipedia)](https://www.dropbox.com/s/9v7r2utfp4go8cp/2021_07_ANSI_colors_background_EXA.png?raw=1 "EXA color keys")