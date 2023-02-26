#!/usr/bin/env bash
# Change the current wallpaper
# No arguments -> random number
# 1 -> Next wallpaper
# 0 -> Previous wallpaper

# Path to the wallkpaper's folder
path=$HOME/wallpaper
path_num=$HOME/dotfiles/scripts/wall_number.txt

# Length of  wallkpaper's folder
length=$(ls  "$path" | wc -l)

# Number of the image
number=1

# Check if there is a file called wall_number.txt. If yes read the number, otherwise creates a randown number.
if [[ -f ~/dotfiles/scripts/wall_number.txt ]] ; then
    number=$(cat $path_num)
else
    number=$( shuf -i 1-$((length)) -n 1 )
fi

# Update the number
if [[ $# -eq 1 ]] ; then
    case $1 in
        0) number=$(( $number - 1 ))
           ;;
        *) number=$(( $number + 1 ))
            ;;
    esac
else
    number=$( shuf -i 1-$((length)) -n 1 )
fi

# Check if this number is valid.
if (( "$number" < 1 )) ; then
     number=$((length))
fi

if (( "$number" > "$length"  )) ; then
     number=1
fi

# Update the wall_number.txt
echo $number > $path_num

# Name of the wallkpaper
name=$(ls "$path" | head -"$number" | tail -1)

# Path to the image
name_file="$path/$name"

# Change the image
feh --bg-fill "$name_file" --no-fehbg

# Notify
# notify-send -i "$name_file" "Walkpaper changed" "$name  $number"
