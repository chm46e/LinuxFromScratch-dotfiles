syntax on
filetype plugin indent on

let mapleader=";" 
let maplocalleader=","

set spelllang=en_us,ee_et
set encoding=utf-8 nobomb

set lazyredraw
set updatetime=300
set synmaxcol=300
set hidden

set backupdir=~/.config/nvim/backups
set nobackup
set nowritebackup
set directory=~/.config/nvim/swaps
set noswapfile
set history=1000
set undodir=~/.config/nvim/undos
set undolevels=1000
set undofile

set gdefault
set magic
set hlsearch
set incsearch
set smartcase

set backspace=indent,eol,start
set nostartofline
set timeoutlen=500
set ttimeoutlen=100

set t_Co=256
colorscheme onehalfdark " modified, bg = #1d1f21
hi clear LineNr
hi link LineNr Comment

set laststatus=2
set number
set report=0
set noshowmode
set noshowcmd
set noshowmatch
let g:loaded_matchparen=1
set splitright splitbelow
set title
set ruler
set confirm
set clipboard=unnamedplus
set autoread

set scrolloff=5
set sidescrolloff=7
set sidescroll=1

set wildmenu
set wildchar=<TAB>
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/node_modules/*
set wildignore+=*.DS_STORE,*.db,node_modules/**,*.jpg,*.png,*.gif
set wildignore+=*/coverage

set foldmethod=manual
set foldnestmax=3
set nofoldenable

set noerrorbells
set novisualbell

set noexpandtab
set autoindent
set smartindent
set copyindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set nojoinspaces

set wrap
set nomodeline
