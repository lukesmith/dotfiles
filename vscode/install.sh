#!/usr/bin/env bash

raspbian_code="$HOME/.config/Code - OSS (headmelted)"

if [ -x "$(command -v raspi-config)" ]; then
  if [ ! -d "$raspbian_code" ]; then
    wget https://packagecloud.io/headmelted/codebuilds/gpgkey -O - | sudo apt-key add -
    curl -L https://code.headmelted.com/installers/apt.sh | sudo bash
  fi

  if [ -d "$raspbian_code" ]; then
    rm -rf "$raspbian_code/User/settings.json"
    ln -s "$DOTFILES/vscode/settings.json" "$raspbian_code/User/settings.json"
  fi
else
  mkdir -p $HOME/.config/Code/User/
  rm -rf "$HOME/.config/Code/User/settings.json"
  ln -s "$DOTFILES/vscode/settings.json" "$HOME/.config/Code/User/settings.json"
fi
