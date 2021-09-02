#!/bin/bash

walpath=$HOME/walkpaper

length=$(ls "$walpath" | wc -l)


randwall() {
    length=$(ls "$walpath" | wc -l)
    number=$(((RANDOM%length)+1))
    name=$(ls "$walpath" | head -"$number" | tail -1)
    echo "$name"
}

if [[ $# -eq 1 ]]; then
    file=$1
else
    file="$walpath/$(randwall)"
fi

feh --bg-fill "$file" --no-fehbg

#filenamee=~/dotfiles/scripts/walkpaper/number.txt
#filename = "$filenamee"
#number=1
#
#while read line; do
#    number = $line
#done < $walpath
#
#check(  ) {
#    if [[ $number -eq 1 ]]; then
#        number = number + 1
#    else 
#        number = number - 1
#    fi
#
#    if [[ number -lt 0 ]]; then
#        number = 1
#    else if [[ number -gt $length ]]; then
#        number = $length
#        fi
#    fi
#    echo "$number"
#}
#
#number = 5
#
#name=$(ls "$walldir" | head -"$number" | tail -1)
#
#echo "$number" > filename
#
#feh --big-fill "$name" --no-fehbg
