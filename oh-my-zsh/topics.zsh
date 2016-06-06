# all of our zsh files
typeset -U config_files
config_files=($DOTFILES/**/*.zsh)

# load the path files
for file in ${(M)config_files:#*/path.zsh}
do
  source $file
done

# load everything but the path and zsh/topics files
for file in ${${config_files:#*/path.zsh}:#*/oh-my-zsh/*.zsh}
do
  source $file
done

unset config_files
