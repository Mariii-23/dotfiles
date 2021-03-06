#!/bin/sh
# HDMI_AUTO
Hdmi() {
  case "$1" in
    "off")
      xrandr --output "HDMI-1" --off 
      ;;
    
    "same")
      xrandr --output "HDMI-1" --auto
      # xrandr --output "HDMI-1" --mode "mine" --auto
      xrandr --output "eDP-1" --auto --output "HDMI-1" --same-as "eDP-1"  
      ;;
    "left")
      xrandr --output "HDMI-1" --auto
      # xrandr --output "HDMI-1" --mode "mine" --auto
      xrandr --output "eDP-1" --auto --output "HDMI-1" --left-of "eDP-1" 
      ;;

    "rigth")
      xrandr --output "HDMI-1" --auto
      #xrandr --output "HDMI-1" --mode "mine" --auto
      xrandr --output "eDP-1" --auto --output "HDMI-1" --right-of "eDP-1" 
      ;;

    "above")
      xrandr --output "HDMI-1" --auto
      # xrandr --output "HDMI-1" --mode "mine" --auto
      xrandr --output "eDP-1" --auto --output "HDMI-1" --above "eDP-1" 
      ;;

    "below")
      xrandr --output "HDMI-1" --auto
      #xrandr --output "HDMI-1" --mode "mine" --auto
      xrandr --output "eDP-1" --auto --output "HDMI-1" --below "eDP-1" 
      ;;

    "tv")
      xrandr --output "eDP-1" --off
      ;;
    
    "pc")
      xrandr --output "eDP-1" --auto
      ;;

    *)
      echo "$1" is not valid 
      ;;

  esac
}

# github
# command : git commit -m XX
function commit() { git commit -m "$1"; 
export -f commit}

function gc() { git commit -m "$1";  
export -f gc
}
# git add + git commit + git push
gup()
{
  if [[ "$1" != "" ]]; then
    git add .
    git commit -m "$1"
    git push
  else 
    git status
  fi
}

# lock
lock_()
{ 
  case "$1" in

    "")
      scrot -o ~/.config/i3lock/screenshot.png
      convert ~/.config/i3lock/screenshot.png -blur 0x05 ~/.config/i3lock/screenshotblur.png
      i3lock -n -i ~/.config/i3lock/screenshotblur.png -b --pass-media-keys -k --timepos="x +90:y +715" --timecolor=ffffffff --datecolor=ffffffff --ringcolor=#009999 --keyhlcolor=#50ffff -C --wrongtext="Wrong BITCH!"
      ;;
    
    "diamond")
      scrot -o ~/.config/i3lock/screenshot.png
      convert ~/.config/i3lock/screenshot.png -blur 0x05 ~/.config/i3lock/screenshotblur.png
      magick composite -gravity center ~/.config/i3lock/diamond2.png ~/.config/i3lock/screenshotblur.png ~/.config/i3lock/abc.png
      # i3lock  -i ~/.config/i3lock/abc.png --datecolor=ffffffff --ringcolor=#009999 --keyhlcolor=#50ffff -C -c 00000000 -b --wrongtext="Wrong BITCH!"
      i3lock  -i ~/.config/i3lock/abc.png --pass-media-keys -k --timepos="x +90:y +715" --timecolor=ffffffff --datecolor=ffffffff --ringcolor=#009999 --keyhlcolor=#50ffff -C -c 00000000 -b --wrongtext="Wrong BITCH!"
      ;;
    
    *)
      ;;

  esac
}

extract() {
  if [ -f "$1" ] ; then
    case "$1" in
      *.tar.bz2)   tar xjf "$1"   ;;
      *.tar.gz)    tar xzf "$1"   ;;
      *.bz2)       bunzip2 -v "$1"   ;;
      *.rar)       unrar x "$1"   ;;
      *.gz)        gunzip "$1"    ;;
      *.tar)       tar xf "$1"    ;;
      *.tbz2)      tar xjf "$1"   ;;
      *.tgz)       tar xzf "$1"   ;;
      *.zip)       unzip "$1"     ;;
      *.Z)         uncompress "$1";;
      *.7z)        7z x "$1"      ;;
      *.xz)        xz -d "$1"     ;;
      *)           echo "$1 cannot be extracted via ex()" ;;
    esac
  else
    echo "$1 is not a valid file"
  fi
}

send_site() {
   scp "$1" berrygood:~ }

bandit() {
  if [[ "$1" != "" ]]; then
    ssh bandit.labs.overthewire.org -p 2220 -l bandit"$1"
  else
    echo "Introduza o n??mero do n??vel"
  fi
}

mkcd() {
  if [[ "$1" != "" ]]; then
    mkdir "$1" && cd "$1"
  else
    echo "Enter a folder name:"
  fi
}

up() {
  shell=$SHELL
  case $shell in
    /bin/zsh)
      source ~/.zshrc
      ;;
    /bin/bash)
      source ~/.bashrc
      ;;
    *)
      echo "Something went wrong."
      ;;
  esac
}

cd_() {
  if [[ "$1" != "" ]]; then
    cd ../"$1"
  else
    cd ..
  fi
}
