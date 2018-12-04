execute pathogen#infect()
syntax on
filetype plugin indent on

" " syntastic (for python)
" " REF:
" " https://github.com/vim-syntastic/syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" 
" let g:syntastic_always_populate_loc_list = 0
" let g:syntastic_auto_loc_list = 0
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" 
" let g:syntastic_python_checkers = ['flake8']
" 
" " python-syntax
" " REF: (Or Readme.md in ~/.vim/bundle/python-syntax)
" " https://github.com/vim-python/python-syntax
" let g:python_highlight_all = 1
" 
" " | Variable                                      | Description                                                    | Default |
" " | --------------------------------------------- | -------------------------------------------------------------- | ------- |
" " | `g:python_version_2`                          | Python 2 mode                                                  | `0`     |
" " | `b:python_version_2`                          | Python 2 mode (buffer local)                                   | `0`     |
" " | `g:python_highlight_builtins`                 | Highlight builtin functions and objects                        | `0`     |
" " | `g:python_highlight_builtin_objs`             | Highlight builtin objects only                                 | `0`     |
" " | `g:python_highlight_builtin_funcs`            | Highlight builtin functions only                               | `0`     |
" " | `g:python_highlight_builtin_funcs_kwarg`      | Highlight builtin functions when used as kwarg                 | `1`     |
" " | `g:python_highlight_exceptions`               | Highlight standard exceptions                                  | `0`     |
" " | `g:python_highlight_string_formatting`        | Highlight `%` string formatting                                | `0`     |
" " | `g:python_highlight_string_format`            | Highlight syntax of `str.format` syntax                        | `0`     |
" " | `g:python_highlight_string_templates`         | Highlight syntax of `string.Template`                          | `0`     |
" " | `g:python_highlight_indent_errors`            | Highlight indentation errors                                   | `0`     |
" " | `g:python_highlight_space_errors`             | Highlight trailing spaces                                      | `0`     |
" " | `g:python_highlight_doctests`                 | Highlight doc-tests                                            | `0`     |
" " | `g:python_highlight_class_vars`               | Highlight class variables `self` and `cls`                     | `0`     |
" " | `g:python_highlight_operators`                | Highlight all operators                                        | `0`     |
" " | `g:python_highlight_all`                      | Enable all highlight options above, except for previously set. | `0`     |
" " | `g:python_highlight_file_headers_as_comments` | Highlight shebang and coding headers as comments               | `0`     |
" " | `g:python_slow_sync`                          | Disable for slow machines                                      | `1`     |

" NERDTree
nnoremap <silent> <C-n> :NERDTreeToggle<CR>
" let g:netrw_winsize = 10
" nnoremap <C-L> :Vexplore<CR>

" vim-airline
let g:airline#extensions#tabline#enabled = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Please view 'help: <command>' for information

"
" basic settings
"
" set cursorline   " highlight cursor current line
set hls          " highlight search
set nu           " show line number
"set rnu          " show relative line number

set expandtab    " convert key <Tab> into spaces ("softtab")
set softtabstop=4    " set softtab size (number of spaces)
set shiftwidth=4 " set indentaion spaces
set autoindent " auto indent on newline. When pasting, you could ':set paste' to avoid it's effects; And ':set nopaste' to revert back

set nowrap
set scrolloff=3 " remain 3 lines when scroll to the bottom

" when typing ':' command
set wildmenu " show menu when <tab>

"
" some good macros
"
" Tips: Enter special character with <Ctrl-v><Key> in insert mode
" Tips: You can :reg to view your recorded macros
"       (but copying reg cannot deal with special characters!!!)
let @c = 'I# j^'
let @p = 'yeoprint(f"{pa}")l%ll' " print(f'{myvar}')
let @l = 'yeologging.info(f"{pa}")l%ll' " logging.info(f'{myvar}')

"
" disable some annoying formatting
"
" See :help fo-table for more information
" Don't need actually, you can get rid of them by <CTRL+U> in insert mode
" set formatoptions-=c
" set formatoptions-=r
" set formatoptions-=o

"
" fix some annoying indentation
"
" /usr/share/vim/vim80/indent.vim is commented out!!
" set nosmartindent
" set cindent
" set cinkeys-=0#
" set indentkeys-=0#

" 
" buffer
"
set hidden
" Switch buffer shortcut
nnoremap <silent> <C-h> :bp<CR>
nnoremap <silent> <C-l> :bn<CR>
" Trick to deleting buffer without affecting the window layout
" See: https://superuser.com/questions/289285/how-to-close-buffer-without-closing-the-window
command Bd bp|sp|bn|bd
" See: https://stackoverflow.com/questions/4465095/vim-delete-buffer-without-losing-the-split-window
" command Bd bp\|bd \#

"
" different file types
"
" .m .oct (octave file) Can 'K' words in octave .m file
autocmd FileType matlab setlocal keywordprg=info\ octave\ --vi-keys\ --index-search
augroup filetypedetect
  au! BufRead,BufNewFile *.m,*.oct set filetype=octave
augroup END
" .yaml file
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
