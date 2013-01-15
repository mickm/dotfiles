set t_Co=256

call pathogen#infect()
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set cursorline
set number
set numberwidth=5
set scrolloff=3

set nowrap
set autoindent
set copyindent
set shiftround
set ignorecase
set smartcase
set smarttab
set history=1000
set undolevels=1000
set wildignore=*.swp
set title
set visualbell
set noerrorbells
set cmdheight=2

set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P
set laststatus=2

if has("mouse")
  set mouse=a
  set ttymouse=xterm2
endif

filetype plugin indent on

syntax on

set background=dark
let g:solarized_termcolors=16
colorscheme solarized

let mapleader=","

" CoffeeScript folding
autocmd FileType coffee setlocal foldmethod=indent nofoldenable

" Python indentation
autocmd FileType python setlocal shiftwidth=4 tabstop=4 softtabstop=4

" Split navigation
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Split resizing
nnoremap <silent> + :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> - :exe "resize " . (winheight(0) * 2/3)<CR>

