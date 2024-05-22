#!/usr/bin/env bash
#######
# GIT #
#######
alias ga='git add'

alias gp='git push'

alias gpf='git push --force-with-lease'

alias gpl='git pull'

alias gs='git status'

alias gl='git log'

alias gb='git branch'

alias gbd='git branch -vv | grep ': gone]' | awk '{print $1}' | xargs git branch -d'

alias gd='git diff'

alias gt='git log --graph --pretty=oneline --all --abbrev-commit --decorate'

# command : git restore credentials
alias git_restore='git config --global credential.helper wincred'

gc() {
  git commit -S -m "$1"
}

gca() {
  git commit --amend -S -m "$1";
}

gm() {
  git merge "$1"
}

gck() {
  git checkout "$1"
}

gcp() {
  git commit -S -m "$1";
  git push
}


# git add + git commit + git push
gup()
{
  if [[ "$1" != "" ]]; then
    git add .
    git commit -S -m "$1"
    git push
  else
    git status
  fi
}

gap() {
  if [[ "$1" != "" ]]; then
    git add .
    git commit -S --amend -m "$1"
    git push --force
  else
    git status
  fi
}

g ()
{
    if [[ $# -eq 0 ]]; then
        git status --short --branch;
    else
        git "$@";
    fi
}
