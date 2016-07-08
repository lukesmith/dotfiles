#!/usr/bin/env zsh

if [ ! -d "$HOME/.oh-my-zsh/" ]
then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
else
  env ZSH=$ZSH /bin/sh $ZSH/tools/upgrade.sh
fi
