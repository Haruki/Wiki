###### reset controller keyboard firmware

## Keyboard Controller reset

pegasus_hoof: magnet reset

pegasus_hoof flashing: (only manual)

```
sudo dfu-programmer atmega32u2 erase
sudo dfu-programmer atmega32u2 flash binaries/[flake|paw|hoof|petal]_ANSI_ISO_JIS.hex
sudo dfu-programmer atmega32u2 start
```
