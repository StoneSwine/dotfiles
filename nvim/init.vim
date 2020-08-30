"## INTRO
  "Dependencies: the_silver_searcher, vim-plug, pynvim, cmake, go, npm

"### BUILT IN VIM SETTINGS
  " Leave insert mode faster.. I also never write something with double j's in
  inoremap jj <ESC>
  set shiftwidth=2
  
  " Change mapleader to <space>
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
  
  set lazyredraw
  
  set wildmode=longest:full
  set wildmenu
  set textwidth=0
  set wrapmargin=1
  set hlsearch
  set wrap
  set cin
  
  " fix copy-paste
  set t_BE=
  
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

"### PLUGINS
  call plug#begin()
    "fzf {{{
      Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
      Plug 'junegunn/fzf.vim'
      
      "Search with hotkey
      nnoremap <C-f> :Files<Cr>
      nnoremap <C-p> :Ag<Cr>
    
    "}}}
    
    "NERDtree {{{
      Plug 'preservim/nerdtree'
      
      "Toggle tree with ctrl-n
      map <C-n> :NERDTreeToggle<CR>
      map <C-l> :NERDTreeFind<CR>
      let g:NERDTreeDirArrows=0
    "}}}
    
    "YouCompleteMe {{{
      Plug 'Valloric/YouCompleteMe', { 'dir': '~/.ycm', 'do': './install.py --all' }
      nnoremap <F5>           :YcmForceCompileAndDiagnostics<CR>
      nnoremap <leader>gic    :vsplit<CR><c-w><right>:YcmCompleter GoToInclude<CR>
      nnoremap <leader>gdc    :vsplit<CR><c-w><right>:YcmCompleter GoToDeclaration<CR>
      nnoremap <leader>gdf    :vsplit<CR><c-w><right>:YcmCompleter GoToDefinition<CR>
      nnoremap <leader>gip    :vsplit<CR><c-w><right>:YcmCompleter GoToImprecise<CR>
      nnoremap <leader>f      :YcmCompleter FixIt<CR>
      nnoremap <F9>           :YcmCompleter FixIt<CR>
    "}}}


    "deoplete {{{
      " install process
      if has('nvim')
        Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
      else
        Plug 'Shougo/deoplete.nvim'
        Plug 'roxma/nvim-yarp'
        Plug 'roxma/vim-hug-neovim-rpc'
      endif
      let g:deoplete#enable_at_startup = 1

      "Move in list with ctrl-{j,k}
      inoremap <expr><C-j>  pumvisible() ? "\<C-n>" : "\<TAB>"
      inoremap <expr><C-k> pumvisible() ? "\<C-p>" : "\<S-Tab>"
    "}}}
  call plug#end()

