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

" Fix for alacritty
if &term == "xterm-kitty"        
  set t_ut=
endif
"let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"let &t_8b = "\<Esc>[48:2;%lu;%lu;%lum"



" Whitespace
set ts=4           " Set tabs to 4 spaces
set autoindent     " Keep indentation when writing
set expandtab      " Expand tabs to spaces
set shiftwidth=4   " Set << and >> moving 4 spaces each
set colorcolumn=80
set nowrap
set formatoptions=cqn1
set tabstop=4
set softtabstop=4
set noshiftround


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


" Nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

nnoremap <Leader>k :NERDTreeToggle<CR>

" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('rs', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('toml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')

" ALE
let g:ale_linters = {'rust': ['analyzer']}
let g:ale_fixers = {'rust': ['rustfmt']}
let g:rustfmt_autosave = 1
let g:ale_completion_enabled = 1
let g:ale_hover_to_preview = 0

nnoremap <Leader>gd :<C-u>ALEGoToDefinition<CR>
"nnoremap <Leader><Space> :<C-u>ALEHover<CR>

" rust.vim
nnoremap <Leader>cb :Cbuild<CR>
nnoremap <Leader>cc :Ccheck<CR>
nnoremap <Leader>cf :RustFmt<CR>
nnoremap <Leader>ct :Ctest<CR>

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_powerline_fonts = 1
"let g:airline_theme='gruvbox'
let g:ale_hover_cursor = 1
let g:ale_set_balloons = 1

" EasyAlign
xmap <Leader>a <Plug>(EasyAlign)
nmap <Leader>a <Plug>(EasyAlign)


" Dracula
packadd! dracula
colorscheme dracula
set background=dark    " Setting dark mode 
let g:airline_theme='dracula'

" Python Syntax
let g:python_highlight_all = 1

