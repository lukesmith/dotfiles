#!/usr/bin/env bash

source "$DOTFILES/script/functions.sh"

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

  CODE_BIN="code-oss"
else
  mkdir -p $HOME/.config/Code/User/
  rm -rf "$HOME/.config/Code/User/settings.json"
  ln -s "$DOTFILES/vscode/settings.json" "$HOME/.config/Code/User/settings.json"

  CODE_BIN="code"
fi

filename="$DOTFILES/vscode/extensions"

function install_code_extension() {
  $CODE_BIN --install-extension "$1"
}

for_each_line_in "$filename" install_code_extension