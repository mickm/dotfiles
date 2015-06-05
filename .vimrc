set t_Co=256

call pathogen#infect()
set backspace=indent,eol,start
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
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

set enc=utf-8
set fillchars=vert:\│

if has("mouse")
  set mouse=a
  set ttymouse=xterm2
endif

filetype plugin indent on

syntax on

let mapleader=","

" CoffeeScript folding
autocmd FileType coffee setlocal foldmethod=indent nofoldenable

" Python indentation
autocmd FileType python setlocal shiftwidth=4 tabstop=4 softtabstop=4

" Arduino syntax highlighting
autocmd BufRead,BufNewFile *.pde set filetype=arduino
autocmd BufRead,BufNewFile *.ino set filetype=arduino

" ES6 syntax highlighting
autocmd BufRead,BufNewFile *.es6 set filetype=javascript

nnoremap <leader>ac :!ino build<CR>
nnoremap <leader>ad :!ino upload<CR>

" Split navigation
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Split resizing
nnoremap <silent> + :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> - :exe "resize " . (winheight(0) * 2/3)<CR>

" Use current visual selection as search and replace target
vnoremap <C-r> "hy:%s/<C-r>h//g<left><left><left>
