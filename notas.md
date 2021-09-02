# Some importante notes

## Change shell
>  chsh -s /bin/zsh
> more /etc/shells (see shells)
## Install picom
> yay picom-tryone-git
## Install net
>  networkmanager and network-manager-applet
> iniciar/habilitar NetworkManager.service
> ligar o nm-applet
### emacs
> sudo pacman -S llvm
> sudo pacman -S clang
> instalar lsp
> ativar o (format +onsave)
> M-x: +format/buffer
## Hex code of Key
> https://help.adobe.com/en_US/framemaker/2015/using/using-framemaker-2015/Appendix/frm_character_sets_cs/frm_character_sets_cs-4.htm
##Install
> makepkg -si
## Versao mais podre do powerpoint...
> LibreOffice
## Screenshot

### Flameshoot and Scrot
Some commands:

* Executar Flameshoot
  > #.xinitrc  *exec dbus-launch dwm  
* Print
  > scrot -t 20 -d b5

## HDMI

### Some informacion
* --left-of                                                                
* --right-of
* --below                  
* --above
* --same-as


### My pc's resolution

* Create and name a new mode : *"1366x768-1"*
  > xrandr --newmode "1366x768-1" 75.61  1366 1406 1438 1574  768 771 777 800 -h
* Attach the new mode to an output (HDMI-1):
  > xrandr --addmode HDMI-1 "1366x768-1"
* Turn on the output using the new mode
  > xrandr --output HDMI-1 --mode "1366x768-1"
 
 ### Commands

* Same Monitor                                                             
  > xrandr --output "eDP-1" --auto --output "HDMI-1" --same-as "eDP-1"
* Left
  > xrandr --output "eDP-1" --auto --output "HDMI-1" --left-of "eDP-1" 
* Turn on 
  > xrandr --output HDMI-1 --mode 1366x768-1 --rate 60 --set audio force-dvi
 
* Por exemplo, a transformação escalando coordenadas horizontais por 0.8, c
  > xrandr --output HDMI1 --transform 0.80,0,-35,0,1.04,-19,0,0,1
  
* ERROR with| Turn off (se algum monitor for detetado mas n existir)
  > xrandr --output NAME_OF_MONITOR --off
 * texting HDMI

    > speaker-text -D hdmi:Card=Phc,Dev=0 -c 2
    > speaker-text -D hdmi:Card=Phc,Dev=0 -c 2 -r 44100
