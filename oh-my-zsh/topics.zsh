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

# load any zsh files in the $HOME directory
typeset -U home_zsh_files
home_zsh_files=($HOME/*.zsh)
for file in ${ZSH_FILES}; do
  source $file
done

unset home_zsh_files
unset config_files
