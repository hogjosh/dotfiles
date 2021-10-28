call plug#begin('~/.config/nvim/plugged')
Plug 'tomasr/molokai'

Plug 'sheerun/vim-polyglot'
Plug 'Chiel92/vim-autoformat'
Plug 'scrooloose/nerdtree'

Plug 'tpope/vim-endwise', { 'for': ['ruby', 'elixir'] }

Plug '/opt/homebrew/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'gleam-lang/gleam.vim'
Plug 'neovimhaskell/haskell-vim'
Plug 'ziglang/zig.vim'

call plug#end()

let g:python3_host_prog='/usr/bin/python3/'

""let g:polyglot_disabled = ['elm']

set shortmess=I
set backspace=indent,eol,start
set history=1000
set showcmd
set showmode
set autoread
set laststatus=2
set ruler
set cursorline
set number
set noswapfile
set nobackup
set nowb

set tabstop=2
set softtabstop=2
set expandtab
set shiftwidth=2

set title
set number
set encoding=utf-8

set hlsearch
set incsearch
set ignorecase
set smartcase

set scrolloff=5

set hidden
syntax enable

set background=dark
colorscheme molokai

let g:mapleader=';'
let g:maplocalleader='\\'

map <CR> :noh<CR>
map <C-o> :NERDTreeToggle<CR>

set splitbelow
set splitright

map <C-K> :bprev<CR>
map <C-J> :bnext<CR>

""nnoremap <C-J> <C-W><C-J>
""nnoremap <C-K> <C-W><C-K>
""nnoremap <C-H> <C-W><C-H>
""nnoremap <C-S> <C-W>s
""nnoremap <C-V> <C-W>v

autocmd FileType elixir setlocal formatprg=mix\ format\ -
autocmd FileType rust setlocal formatprg=cargo\ fmt\ -


