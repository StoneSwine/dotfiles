" This is the configfile of NeoVim
" CREATOR: 
" 	Magnus Lilja

" Leave insert mode faster.. I also never write something with double j's in
inoremap jj <ESC>

" Change mapleader from to <space>
let mapleader = " "

nnoremap ; :

" Save the current buffer using the leader key
noremap <Leader>w :w<CR>

" Save and exit Vim using the leader key
noremap <Leader>e :wq<CR>

" Exit without saving using the leader key
noremap <Leader>q :q!<CR>

" Enable syntax highlighting
syntax on

" fix tabs and spaces
set tabstop=2
set shiftwidth=2
set expandtab
" Kill the arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>

" autoindent
set ai

" number on the side
set number

" highlight searches
set hlsearch

" show cursor position
set ruler

highlight Comment ctermfg=green
