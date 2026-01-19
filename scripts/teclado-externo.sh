#!/bin/bash

export DISPLAY=:0
export XAUTHORITY=/home/mari/.Xauthority

setxkbmap -layout pt -option ctrl:nocaps
xcape -e 'Control_L=Escape'


## é necessário adicionar a regra em:
# sudo nvim /etc/udev/rules.d/90-teclado-externo.rules
# ACTION=="add", SUBSYSTEM=="input", ENV{ID_INPUT_KEYBOARD}=="1", ENV{ID_BUS}=="usb", RUN+="/usr/local/bin/teclado-externo.sh"


