#!/usr/bin/env bash
# set -euo pipefail

declare -a allPaths=("dotfiles" "2_Ano_Uni" "Projetos" "walkpaper" "screenshot")

if [[ "$1" != "" ]]; then
    cd ~/dotfiles && git add . && git commit -m "$1" && git push
    cd ~/2_Ano_Uni && git add . && git commit -m "$comment" && git push
    cd ~/Projetos && git add . && git commit -m "$comment" && git push
    cd ~/walkpaper && git add . && git commit -m "$comment" && git push
    cd ~/screenshot && git add . && git commit -m "$comment" && git push
else
   # for t in ${allPaths[@]}; do
   #     echo "${allPaths[$t]}"
   #     cd ~/${allPaths[$t]} && git status
   #     echo "Do you want commit ${allPaths[$t]} ?"
   #     read commit
   #     if [[ "$commit" == "yes" ]]; then
   #         echo "Comment: "
   #         read comment
   #         git add . && git commit -m "$comment" && git push
   #         echo "\n"
   #     fi
   # done

    echo "DOTFILES"
    cd ~/dotfiles && git status
    echo "Do you want commit Dotfiles ?"
    read commit
    if [[ "$commit" == "yes" ]]; then
        echo "Comment: "
        read comment
        git add . && git commit -m "$comment" && git push
        echo "\n"
    fi
    echo "2_ANO_UNI" && cd ~/2_Ano_Uni && git status
    echo "Do you want commit 2_ANO_Uni ?"
    read commit
    if [[ "$commit" == "yes" ]]; then
        echo "Comment: "
        read comment
        git add . && git commit -m "$comment" && git push
        echo "\n"
    fi
    echo "PROJETOS"
    cd ~/Projetos && git status
    echo "Do you want commit Projetos ?"
    read commit
    if [[ "$commit" == "yes" ]]; then
        echo "Comment: "
        read comment
        git add . && git commit -m "$comment" && git push
        echo "\n"
    fi
    echo "Walkpaper"
    cd ~/walkpaper && git status
    echo "Do you want commit Walkpaper ?"
    read commit
    if [[ "$commit" == "yes" ]]; then
        echo "Comment: "
        read comment
        git add . && git commit -m "$comment" && git push
        echo "\n"
    fi
    echo "Screenshot"
    cd ~/screenshot && git status
    echo "Do you want commit Screenshot ?"
    read commit
    if [[ "$commit" == "yes" ]]; then
        echo "Comment: "
        read comment
        git add . && git commit -m "$comment" && git push
        echo "\n"
    fi
fi
