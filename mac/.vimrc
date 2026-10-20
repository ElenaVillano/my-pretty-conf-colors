set notermguicolors

if has('nvim')
  colorscheme vim
else
  colorscheme desert
endif

syntax on
autocmd FileType markdown syntax on
autocmd BufRead,BufNewFile *.qmd syntax on

set number
set tabstop=4
set shiftwidth=4
highlight LineNr ctermfg=black ctermbg=white
highlight String ctermfg=cyan
highlight Number ctermfg=blue

" Folding para markdown/qmd
let g:markdown_folding = 1
set foldlevel=0
highlight Folded ctermfg=cyan ctermbg=lightgray cterm=italic

syntax enable
filetype plugin indent on

vnoremap <silent> <Leader>p "_dP`]
highlight Visual cterm=None ctermbg=white

" qmd como markdown
autocmd BufRead,BufNewFile *.qmd set filetype=markdown

set wrap
set linebreak
set nolist
set showtabline=2

set mouse=

autocmd FileType yaml setlocal foldmethod=indent

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
call plug#end()
