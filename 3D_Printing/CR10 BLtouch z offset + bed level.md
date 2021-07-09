###### 3D Druck, 3D printing, creatliy, CR10 v2, bed level, z offset
# CR10 BL-touch, z offset einstellen (Bed level)

Quelle: [webcarpenter.com](https://www.webcarpenter.com/blog/162-3D-Print---How-to-calibrate-Z-offset-with-a-BLTouch-bed-leveling-probe-sensor)

Octopi -> manuelle Druckerbefehle (G-Code)

Reset Z0-Offset
`M851 Z0`

Store setting to EEPROM
`M500`

Set active parameters
`M501`

Display Active Parameters
`M503`

Home your nozzle and show your Z-Axis
`G28`

Move the nozzle to true 0 offset
`G1 F60 Z0` 

Switch off soft end stops
`M211 S0`

Get a piece of letter/A4 paper and place it under your nozzle
Lower your nozzle towards bed slowly until the paper can barely move
Take note of the Z on the printer display (take that number and add the measurement of the calibration sheet or device used)
Set your z offset. Mine measured -2.7 so I used -2.71. 

`M851 Z -X.XX` (X.XX is the z-offset you just measured)

`M851 Z -2.71` (is what I used)

Enable Soft Endstops
`M211 S1`

Save settings to Eeprom
`M500`

Set Active Parameters
`M501`

Display current settings
`M503`

Again, Tell the printer to go Home
`G28`

Move the nozzle to true zero offset to see your result
`G1 F60 Z0` 
