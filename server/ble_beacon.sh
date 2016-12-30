#!/bin/bash

# setting up the bluetooth
hciconfig hci0 up
hciconfig hci0 leadv 3
hciconfig noscan

# running the emitter
hcitool -i hci0 cmd 0x08 0x0008 1E 02 01 1A 1A FF 4C 00 02 15 5d 5e c5 ae d1 fb 4b a4 80 c1 df 4b 6e e0 67 ba 00 00 00 00 C8 
