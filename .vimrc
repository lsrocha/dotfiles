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

silent! nmap <silent> <Leader>p :NERDTreeToggle<CR>
