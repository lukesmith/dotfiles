# dotfiles

Based on [holman/dotfiles](https://github.com/holman/dotfiles).

## Install

### Linux and MacOS

Run

```shell
sudo apt install git -y
git clone https://github.com/lukesmith/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```

Going forward the `dot` command can be run to keep the configuration upto date

### Windows

Run

```shell
Set-ExecutionPolicy RemoteSigned
iwr https://github.com/lukesmith/scripts/bootstrap.ps1 -UseBasicParsing | iex
```
