mkdir -p $HOME/.config/Code/User/
rm "$HOME/.config/Code/User/settings.json"
ln -s "$DOTFILES/vscode/settings.json" "$HOME/.config/Code/User/settings.json"