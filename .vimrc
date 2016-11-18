filetype plugin on
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

syntax on
set nocompatible

set tabstop=4
set softtabstop=4
"set expandtab
set autoindent

set nobomb
set number

set laststatus=2

" ***********
" ** STYLE **
" ***********
if has('gui_running')
	set guifont=Source\ Code\ Pro\ 12
	colorscheme darkspectrum
else
    set term=xterm-256color
endif

" ******************
" ** MAPPING KEYS **
" ******************
let mapleader = "\<Space>"

" PLUGINS
nmap <F9> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>
nmap <Leader>/ <Leader>c<Space>
vmap <Leader>/ <Leader>c<Space>

" TABS
nnoremap <Leader>t :tabnew<CR>
nnoremap <Leader>x :tabclose<CR>
nnoremap <Leader><Tab> :tabnext<CR>
nnoremap <Leader><S-Tab> :tabprevious<CR>

" DOCUMENT
nnoremap <Home> gg
nnoremap <End> G

nnoremap <Leader>q :q<CR>
nnoremap <Leader>w :w<CR>

" LINE POSITION
nnoremap H ^
nnoremap L $

" SPLITS
nnoremap <Leader>s :split<CR>
nnoremap <Leader>v :vsplit<CR>

" NAVIGATION
nnoremap <Leader><Up> <C-w>k
nnoremap <Leader><Down> <C-w>j
nnoremap <Leader><Left> <C-w>h
nnoremap <Leader><Right> <C-w>l

" COPY/PASTE
nmap <Leader>p "+p
vmap <Leader>c "+y

" MOVING LINES
nmap <S-Up> ddkP
nmap <S-Down> ddjP
