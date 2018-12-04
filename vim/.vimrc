execute pathogen#infect()
syntax on
filetype plugin indent on

" NERDTree
map <silent> <C-n> :NERDTreeToggle<CR>

" vim-airline
let g:airline#extensions#tabline#enabled = 1

" buffer
map <C-h> :bprev<CR>
map <C-l> :bnext<CR>
command Bd bp|bd #

set hls
set nu

set expandtab " softtab
set softtabstop=4 " softtab size
set shiftwidth=4 " indentation space
set autoindent

set nowrap
set scrolloff=3 " remain 3 lines when scroll to the bottom

set wildmenu " show menu when <tab>


autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
