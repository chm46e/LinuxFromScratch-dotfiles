" Neovim config
" made by: chm46e

set nocompatible
filetype on
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/vundle')

" Vundle, the plug-in manager for Vim
Plugin 'VundleVim/Vundle.vim'
" Base16 for Vim (colorscheme)
Plugin 'chriskempson/base16-vim'
" lean & mean status/tabline for vim that's light as air
Plugin 'vim-airline/vim-airline'
" A collection of themes for vim-airline
Plugin 'vim-airline/vim-airline-themes'
" A Git wrapper so awesome, it should be illegal
Plugin 'tpope/vim-fugitive'
" Vim plugin for intensely nerdy commenting powers
Plugin 'preservim/nerdcommenter'
" Rainbow brackets for Vim
Plugin 'frazrepo/vim-rainbow'
" Delete/change/add parentheses/quotes/XML-tags/much more with ease ({c,d}s..)
Plugin 'tpope/vim-surround'
" required by fzf.vim
Plugin 'junegunn/fzf'
" fzf heart vim
Plugin 'junegunn/fzf.vim'
" File manager for vim/neovim powered by n³
Plugin 'mcchrish/nnn.vim'
" autocompletion
Plugin 'neoclide/coc.nvim'
" even better % navigate and highlight matching words modern matchit and matchparen
Plugin 'andymass/vim-matchup'
" Preview colours in source code while editing
Plugin 'ap/vim-css-color'
" Vim filetype support for the new eww configuration language yuck.
Plugin 'elkowar/yuck.vim'

call vundle#end()

" Coc extensions
let g:coc_global_extensions = ['coc-calc', 'coc-clangd', 'coc-cmake', 'coc-css', 'coc-diagnostic', 'coc-highlight', 'coc-html', 'coc-html-css-support','coc-json', 'coc-markdownlint', 'coc-markdown-preview-enhanced', 'coc-omnisharp', 'coc-pairs', 'coc-python', 'coc-rust-analyzer', 'coc-sh', 'coc-sql', 'coc-xml', 'coc-yaml', 'coc-yank']

" Nvim options
source ~/.config/nvim/opts.vim

" Autocommands
source ~/.config/nvim/auto.vim

" Plugins
source ~/.config/nvim/plugs.vim

" Extra Keys
source ~/.config/nvim/keys.vim
