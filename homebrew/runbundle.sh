#!/usr/bin/env bash

if test $(which brew)
then
  echo "› brew bundle"
  brew bundle --file=$DOTFILES/Brewfile

  if test "$(uname)" = "Darwin"
  then
    brew bundle --file=$DOTFILES/Caskfile
  fi
fi
