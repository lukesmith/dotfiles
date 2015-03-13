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
Plugin 'scrooloose/syntastic'
Plugin 'airblade/vim-gitgutter'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Set line numbers
set relativenumber
set number

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

" Switch to alternate file
nnoremap <C-l> :bnext<CR>
nnoremap <C-k> :bprevious<CR>

" Delete current buffer without closing window
:command! Bd :bn|:bd#

" NERDTree
function! StartUp()
  if 0 == argc()
    NERDTree
  end
endfunction

autocmd VimEnter * call StartUp()

" gitgutter
highlight clear SignColumn
call gitgutter#highlight#define_highlights()
highlight GitGutterAdd ctermfg=2* guifg=darkgreen
highlight GitGutterChange ctermfg=3* guifg=darkyellow
highlight GitGutterDelete ctermfg=red guifg=darkred
highlight GitGutterChangeDelete ctermfg=3* guifg=darkyellow
