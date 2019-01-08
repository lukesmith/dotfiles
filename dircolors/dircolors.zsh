if ! [ -x "$(command -v dircolors)" ]; then
    echo "dircolors not present" > /dev/null
else
    eval `dircolors $HOME/.dircolors/dircolors.ansi-dark`
fi