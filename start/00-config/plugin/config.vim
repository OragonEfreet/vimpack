" This is my whole configuration file (wimrc) direclty put as a plugin into my
" package. Some settings are vim native while other depends on other plugins
" being installed.
"
" VIM 
set nocompatible
let mapleader=","
set visualbell

filetype plugin on
filetype indent on

set relativenumber
set number
syntax enable
set cursorline

set termguicolors

" Whitespace
set autoindent     " Keep indentation when writing
set expandtab      " Expand tabs to spaces
set colorcolumn=80
set nowrap
set formatoptions=cqn1
set noshiftround

augroup FileTypeSpecificAutocommands
    autocmd FileType c setlocal tabstop=4 softtabstop=4 shiftwidth=4
    autocmd FileType cpp setlocal tabstop=4 softtabstop=4 shiftwidth=4
    autocmd FileType html setlocal syntax=xml tabstop=2 softtabstop=2 shiftwidth=2
    autocmd FileType javascript setlocal syntax=typescript tabstop=2 softtabstop=2 shiftwidth=2
    autocmd FileType json setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd FileType rust setlocal tabstop=4 softtabstop=4 shiftwidth=4
    autocmd FileType typescript setlocal tabstop=2 softtabstop=2 shiftwidth=2
augroup END

" Bindings
" In normal mode, remove arrow keys.  The reason is that I am still new using
" vim and I want me to try hjkl
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" Navigating through buffers and tabs
nnoremap <C-k> :bnext!<CR>
"noremap <C-K> :tabnext<CR>
nnoremap <C-j> :bprev!<CR>
"noremap <C-J> :tabprev<CR>

" FZF and FZF.vim
nnoremap <C-p> :<C-u>Files<CR>
"nnoremap <C-P> :<C-u>Commands<CR>
nnoremap <Leader>pg :<C-u>GFiles?<CR>
nnoremap <Leader>pb :<C-u>Buffers?<CR>
nnoremap <Leader>pf :<C-u>:Rg<CR>
vnoremap <Leader>pf y:Rg <C-R>"<CR>
let $FZF_DEFAULT_COMMAND = 'rg --files'

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_powerline_fonts = 1
"let g:airline_theme='gruvbox'

" EasyAlign
xmap <Leader>a <Plug>(EasyAlign)
nmap <Leader>a <Plug>(EasyAlign)

" Theme
set background=dark
colorscheme catppuccin_frappe 
let g:airline_theme='catppuccin_frappe'
if exists('$VIM_COLOR_SCHEME') && $VIM_COLOR_SCHEME =='dark'
        set background=light
        colorscheme catppuccin_latte 
        let g:airline_theme='catppuccin_latte'
endif

" Python Syntax
let g:python_highlight_all = 1



