set number
set tabstop=4
set shiftwidth=4

set paste
highlight LineNr ctermfg=black ctermbg=white
highlight String ctermfg=cyan
highlight Number ctermfg=blue
syntax enable
filetype plugin indent on
vnoremap <silent> <Leader>p "_dP`]

highlight Visual cterm=None ctermbg=white

autocmd BufRead,BufNewFile *.qmd set filetype=markdown


set wrap
set linebreak
set nolist

set showtabline=2
autocmd FileType yaml setlocal foldmethod=indent
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
call plug#end()
