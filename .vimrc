" Don't try to be vi compatible
set nocompatible

" The Basics
execute pathogen#infect()
syntax on
filetype plugin indent on

" Boilerplate
set ruler
set number
set encoding=utf-8
set wrap
set colorcolumn=80
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch

" Use leader + l to toggle visualization of tabs and newlines
set listchars=tab:▸\ ,eol:¬
map <leader>l :set list!<CR> " Toggle tabs and EOL

" I like the mouse, so what?  Sue me!
set mouse=a

" vim-airline theming
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'

" display class API with F8 key
nmap <F8> :TagbarToggle<CR>

" tmux integration
let g:airline#extensions#tmuxline#enabled = 1
let g:tmuxline_preset = 'minimal'
let airline#extensions#tmuxline#snapshot_file = "~/.tmux-status.conf"

