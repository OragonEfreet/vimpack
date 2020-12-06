" This is my whole configuration file (wimrc) direclty put as a plugin into my
" package. Some settings are vim native while other depends on other plugins
" being installed.
"
" VIM 
set nocompatible
let mapleader=","

filetype plugin on
filetype indent on

"set relativenumber
"set number
syntax on

" Whitespace
set nowrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" Bindings
" In normal mode, remove arrow keys.
" The reason is that I am still new using vim and I want me to try hjkl
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>


