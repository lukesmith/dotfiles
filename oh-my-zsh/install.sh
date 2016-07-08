#!/usr/bin/env bash

if [ ! -d "$HOME/.oh-my-zsh/" ]
then
  git clone --depth=1 https://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh || {
    printf "Error: git clone of oh-my-zsh repo failed\n"
    exit 1
  }
else
  env ZSH=$ZSH /bin/sh $ZSH/tools/upgrade.sh
fi
