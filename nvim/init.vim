" Leave insert mode faster.. I also never write something with double j's in
inoremap jj <ESC>
set shiftwidth=2

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

set encoding=utf-8
set nocp
filetype plugin on

" Improve performance
"let g:loaded_matchparen=1
"set nolist
"set nonumber
"set ttyfast
set lazyredraw

" Custom C++ indentation
"set cino=g0,N-s,i4
"autocmd BufEnter *.h :setlocal cindent cino=j1,(0,ws,Ws
"autocmd BufEnter *.cpp :setlocal cindent cino=j1,(0,ws,Ws

map <F2> i <%   %><LEFT><LEFT><LEFT><LEFT>
map <F3> i <%=   %><LEFT><LEFT><LEFT><LEFT>
set wildmode=longest:full
set wildmenu
set textwidth=0
set wrapmargin=1
set hlsearch
"set tw=120
set wrap
set cin
"set spell

" fix copy-paste
set t_BE=

" disable preview window on autocomplete
set completeopt-=preview

"map <C-LEFT> :tabp<CR>
"map <C-RIGHT> :tabn<CR>
map <C-PageUp> :tabp<CR>
map <C-PageDown> :tabn<CR>
map <C-LEFT> <c-w><
map <C-RIGHT> <c-w>>
map <C-UP> <c-w>-
map <C-DOWN> <c-w>+
map <A-LEFT> <c-w><left>
map <A-RIGHT> <c-w><right>
map <A-UP> <c-w><up>
map <A-DOWN> <c-w><down>

" Tab navigation like Firefox.
nnoremap th  :tabfirst<CR>
nnoremap tj  :tabprev<CR>
nnoremap tk  :tabnext<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tm  :tabm<Space>
nnoremap tn  :tabnew<CR>
nnoremap td  :tabclose<CR>
nnoremap tc  :tab split<CR>
nnoremap t1  :tabnext 1<CR>
nnoremap t2  :tabnext 2<CR>
nnoremap t3  :tabnext 3<CR>
nnoremap t4  :tabnext 4<CR>
nnoremap t5  :tabnext 5<CR>
nnoremap t6  :tabnext 6<CR>
nnoremap t7  :tabnext 7<CR>
nnoremap t8  :tabnext 8<CR>
nnoremap t9  :tabnext 9<CR>

" fold options
set foldmethod=syntax
set foldnestmax=10
set nofoldenable
set foldlevel=20

" install plugins with vim-plug
call plug#begin()
"FZF {{{
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'

  nnoremap <C-f> :Files<Cr>
  nnoremap <C-p> :Ag<Cr>

"}}}
call plug#end()
