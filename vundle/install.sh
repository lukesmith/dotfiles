if [ ! -d "$HOME/.vim/bundle/Vundle.vim" ]
then
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

vim -i NONE -c VundleUpdate -c quitall
