###### tags: VirtualBox, Festplattenplatz, Speicher, vdi, Platz

# VirtualBox: Von .VDI virtueller Festplatte belegten Platz freigeben

1. Defragmentieren (falls möglich, auf SSDs meist nicht)
2. In der VM mittels `sdelete.exe`(Windows) oder `zerofree`(Linux) den freien Plattenplatz mit Nullen überschreiben.
   
   Windows: `sdelete.exe c -z`
   
   Linux: `zerofree -v /dev/sda1` (Achtung nur mit root / ggf. nur ungemounted / boot from usb)

3. Von außerhalb der VM: 
   
   `VBoxManage.exe" modifymedium disk win10jd.vdi --compact`