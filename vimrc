" Pathogen plugin support
execute pathogen#infect()

" Not all Vims enable syntax by default
syntax on

" Indendtation settings
filetype indent plugin on
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent

set number

" Language-specific settings
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2 softtabstop=2

" Local overrides
if filereadable("~/.vimrc.local")
    source ~/.vimrc.local
endif
