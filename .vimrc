filetype plugin on
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

syntax on
set nocompatible

set tabstop=4
set softtabstop=4
set expandtab
set autoindent

set nobomb
set number

set laststatus=2

if has('gui_running')
    set guifont=Source\ Code\ Pro\ 12
    set guioptions-=T
    set background=dark
    colorscheme solarized
else
    set term=xterm-256color
endif

let mapleader = "\<Space>"

silent! nmap <silent> <Leader>p :NERDTreeToggle<CR>

nnoremap <Leader>t :tabnew<CR>
nnoremap <Leader>x :tabclose<CR>
nnoremap <Leader>n :tabnext<CR>
nnoremap <Leader>b :tabprevious<CR>

nnoremap <Leader>s :split<CR>
nnoremap <Leader>v :vsplit<CR>

nnoremap H ^
nnoremap L $

nnoremap <Leader><Up> <C-w>k
nnoremap <Leader><Down> <C-w>j
nnoremap <Leader><Left> <C-w>h
nnoremap <Leader><Right> <C-w>l
