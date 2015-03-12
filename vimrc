set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'blueyed/vim-diminactive'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Set line numbers
set relativenumber

" display tabs and trailing spaces
set list
set listchars=tab:▷⋅,trail:⋅,nbsp:⋅,extends:#

" vim-colors-solarized
syntax enable
set background=dark
colorscheme solarized

" vim-airline
let g:airline_powerline_fonts = 1
set laststatus=2

" ctrlp.vim
nnoremap <c-n> :CtrlP<CR>
nnoremap <c-m> :CtrlPTag<CR>

" NERDTree
function! StartUp()
  if 0 == argc()
    NERDTree
  end
endfunction

autocmd VimEnter * call StartUp()
