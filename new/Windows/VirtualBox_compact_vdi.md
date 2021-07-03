###### tags: VirtualBox, Festplattenplatz, Speicher, vdi, Platz

# VirtualBox: Von .VDI virtueller Festplatte belegten Platz freigeben

1. Defragmentieren (falls möglich, auf SSDs meist nicht). Wenn Guest=Windows, dann können im laufenden Betrieb auch nicht alle Dateien verschoben werden.
z.B. per 
2. In der VM mittels `sdelete.exe`(Windows) oder `zerofree`(Linux) den freien Plattenplatz mit Nullen überschreiben.
   
   Windows: `sdelete.exe c -z`

   Linux: `zerofree -v /dev/sda1` (Achtung nur mit root / ggf. nur ungemounted / boot from usb)

3. Von außerhalb der VM: 
   
   `VBoxManage.exe" modifymedium disk win10jd.vdi --compact`


Sonstige Infos:
[Info zum Defragmentieren von VDI auf ausinfotech.net](https://ausinfotech.net/blog/compactdefrag-virtualbox-vdi-disk/?__cf_chl_captcha_tk__=aff6526fac82c3d86b7043d799c51b52874a2f94-1619306083-0-ASy4AnpCKDFM3yGq8MyzZPvAWdKg5PIZqLrychVzQGx5IJ-T2AKc-8MhuUdJW7fg4rlztzpUHBdPQ9onsoHT2S38-OiKsz5CQZ7qu8w-W1Vhdi33qnBNKGCUfxJ0InwKW5_qVJnmYd6a6yLozx6aRLB0rsJBY0Zz7gYpu0dofGH_BKbyWi5yy2vsx0beQNQd-tTLgGvS8wNOWGdArPUFF3HCBCVnZMWIJdfCwEjExkzSuRzBi7DBHlR2jPXl8nZsvW9JYgFf_TZYdSAJiuEAmjx9gu5ONU52ykGKZWtudQJqX3k83OKBAsD89-8-hVHcfoW5QQmA_ZGm78zPPWHDaubjB55LQbfLbGTdSiD8X-RmQB935Q0-73KmbYMzkzB74x4XOJ-QPUtow9wXuAqpVysfNi0qJi3GNHpg_a7c192caTG6JszVQlvBtXsJ6aW7N0BdHIfLv5_MLxpyd_wcqjvrRSRuGgrN6fYVELNNJQZ6AHyox8p8D-QK1GG1ydSv10WEDnObtiFtL42XzzTZx3gU5JeWhtoYi5afyWdTuJnXGHAh1fScbfdDogs2e6_NzW6eAylCXfKVL7MIU5vAlfabTNRXFbyJbW9qu-h4wVXM8rS5jPaOHCCdLKmBcVfyp0Ifyc4W2vRWP-kM_xW9iF4)

Von ausinfotech gibts auch den Defragmentierer `Disk Defrag` welcher auf Windows das Defragmentieren auf SSDs ermöglicht.
Offline Defragmentieren benötigt leider die PRO Version.
