# dotfiles

Based on [holman/dotfiles](https://github.com/holman/dotfiles).

## Install

### Linux and MacOS

Run

```shell
git clone https://github.com/lukesmith/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```

### Windows

Run

```shell
Set-ExecutionPolicy RemoteSigned
iwr https://github.com/lukesmith/scripts/bootstrap.ps1 -UseBasicParsing | iex
```