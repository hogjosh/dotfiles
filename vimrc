if &shell =~# 'fish$'
	set shell=sh
endif

execute pathogen#infect()
set nocompatible

" => General

" Sets how many lines of history VIM has to remember
set history=700

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed externally
set autoread

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

" :W sudo saves the file
" (useful for handling the permission denied error)
command W w !sudo tee % > /dev/null

" => VIM user interface
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Always show the current position
set ruler

" Height of the command bar
set cmdheight=2

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about case
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Add a bit extra margin to the left
set foldcolumn=1

" => Colors and Fonts

" Enable syntax highlighting
syntax enable

try 
	colorscheme molokai
catch
endtry

set background=dark

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,mac,dos

" => Files, backups and undo

" Turn backup off
set nobackup
set nowb
set noswapfile

" => Text, tab, and indent related

" Use spaces isntead of tabs
set expandtab

" Be smart when using tabs
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" => Mappings

" Clear search highlight
nnoremap <silent> <esc> :nohlsearch<cr><esc>

" Toggle NERDTree
nmap <leader>n :NERDTreeToggle<cr>
