" Colour scheme settings
syntax on
set background=dark
colorscheme solarized

" Indentation settings
filetype indent plugin on
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent

" Line/column numbers
set ruler
set number relativenumber
set cursorline

" Highlight whitespace
set list
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·

" Language-specific settingsautocmd FileType yaml setlocal shiftwidth=2 tabstop=2 softabstop=2

" Local overrides
if filereadable("~/.vimrc.local")
    source ~/.vimrc.local
endif
