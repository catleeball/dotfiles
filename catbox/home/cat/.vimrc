syntax on

" Forgot sudo, save with sudo: https://stackoverflow.com/a/7078429
cmap w!! w !sudo tee > /dev/null %

" set mouse=a
set number
set relativenumber
set ruler

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smarttab
set autoindent
set backspace=indent,eol,start

" Highlight current line
set cursorline
highlight ColorColumn ctermbg=lightgrey guibg=lightgrey

" 80 character vertical ruler
set colorcolumn=80
set pastetoggle=<F2>

