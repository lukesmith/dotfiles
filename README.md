# dotfiles

Based on [holman/dotfiles](https://github.com/holman/dotfiles).

## Install

### Linux and MacOS

Run

```shell
sudo apt install git zsh -y
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/lukesmith/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```

Going forward the `dot` command can be run to keep the configuration upto date

### Windows

Run

```powershell
Set-ExecutionPolicy RemoteSigned
iwr https://raw.githubusercontent.com/lukesmith/dotfiles/master/script/bootstrap.ps1 -UseBasicParsing | iex
streamline-linux
```
