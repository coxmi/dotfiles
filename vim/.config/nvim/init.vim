
" behaviour
set backspace=indent,eol,start
set history=1000
set scrolloff=1
set scrolljump=1
" set lazyredraw
" set regexpengine=0
nnoremap <C-D> 1j
nnoremap <C-U> 1k

" plugins
filetype plugin on
filetype indent on

" ui
set number
set cursorline
set showmatch
set laststatus=2
hi LineNr ctermfg=8 ctermbg=NONE cterm=NONE
hi CursorLineNr ctermfg=15 ctermbg=8 cterm=bold
hi CursorLine cterm=NONE ctermfg=NONE ctermbg=8
hi StatusLine ctermfg=15 ctermbg=8 cterm=bold
hi StatusLineNC ctermfg=8 ctermbg=8 cterm=NONE

" indentation
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set smartindent

" enable bold/italic in supported terminals
" set t_Co=256
" set t_Sb=^[[4:3m
" set t_Sf=^[[5:3m

" no backup files on disk
set nobackup
set nowritebackup
set noswapfile

" Do not store viminfo
set viminfo=