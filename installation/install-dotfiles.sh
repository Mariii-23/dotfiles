#!/bin/bash

sudo() { echo "$PASSWORD" | command sudo -S true && command sudo "$@"; }

read -r -s -p "[sudo] password for $LOGNAME: " PASSWORD

path="$0"
symlink_file="symlinks.txt"
package_file="packages.txt"


if [[ "${path:0:1}" = "/" ]] # check if an absolute path is provided
then
   installation_dir=$(dirname "$path")
else
   installation_dir=$(dirname "$PWD"/"$path")
fi

dotfiles_dir=$(dirname "$installation_dir")


main() {

   echo "$installation_dir"
   echo "$dotfiles_dir"

   if [[ "$#" -eq 0 ]]
   then
        packages
        # ; symlinks ; rest
   else
      for fun in "$@"
      do
        eval "$fun"
      done
   fi

}

symlinks() {

   local dest_dir
   #browser && sleep 5s && pkill -f firefox
   if [[ ! -d "$HOME/.config" ]]
   then
      mkdir ~/.config
   fi

   while read -r line ; do

     if [[ "$line" = dest_dir* ]] ; then
        eval "$line" #dest_dir= directory where symlink will be created

     elif [[ "$line" != "" ]] ; then
     	 link_name="$(basename "$line")"
          rm -rv "${dest_dir:?}/$link_name" 2>/dev/null
          ln -sfv "$dotfiles_dir/$line" "$dest_dir/$link_name"
     fi

   done < "$installation_dir/$symlink_file"
}

packages(){

   ################### install yay ########################################################################

   read -p "do you wish to install yay (aur helper) ? (defaults to yes)" -n 1 -r

   if [ "$REPLY" != "n" ]
   then
       yay_dir=~/.local/share/yay
       git clone https://aur.archlinux.org/yay.git $yay_dir
       cd $yay_dir || exit
       makepkg -si
       yay --save --answerdiff None --answerclean None --removemake
   fi
   echo

   #############################install every other packages #########################################################

   while read -r packageName
   do
      sudo pacman -S --noconfirm --needed "$packageName" || pacman -Qi "$packageName" || yay -S "$packageName" </dev/tty

   done < "$installation_dir/$package_file"

   echo "Installed all the packages"

   ###install rust####
   curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

}

rest(){
 # copiar os scripts
   chmod +x $dotfiles_dir/scripts /bin
   cp -r $dotfiles_dir/scripts /bin

   mkdir -p ~/.local/cached # create directory which will be used by zsh to store history
   read -p "do you wish to install wallpapers ? (defaults to yes)" -n 1 -r

   if [ "$REPLY" != "n" ]
   then
       git clone git@github.com:Mariii-23/wallpaper.git

   fi

   cd ; source ~/.zprofile
}

main "$@"
