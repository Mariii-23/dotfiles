xrdb ~/.Xresources
setxkbmap -layout pt

xrandr --newmode "mine" 72.25  1368 1416 1448 1528  768 771 781 790 +hsync -vsync
xrandr --addmode HDMI-1 "mine"

xrandr --newmode "1366x768-1" 75.61  1366 1406 1438 1574  768 771 777 800 -h
xrandr --addmode HDMI-1 "1366x768-1"

# Touchpad
xinput set-prop 'ELAN1300:00 04F3:30BE Touchpad' 'libinput Click Method Enabled'0 1
xinput set-prop 'ELAN1300:00 04F3:30BE Touchpad' 'libinput Tapping Enabled' 1

sxhkd &>/dev/null & disown


#setxkbmap -option caps:swapescape
setxkbmap -option ctrl:nocaps
xcape -e 'Control_L=Escape'

exec herbstluftwm  &>/tmp/log_.txt
# exec bswpm
#redshift -O3500; xset r rate 300 50; exec dwm
