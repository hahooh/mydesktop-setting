" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Initialize plugin system
call plug#end()

set number " Show line number
set relativenumber " Show relative number
set autoindent
set expandtab
set tabstop=4 " tab size of 4 spaces
set shiftwidth=4 
set softtabstop=4
set tabstop=4
set ruler
set titlestring=%t
set title
set background=dark
set hlsearch
set incsearch
set ignorecase
set spell
set noerrorbells
set nowrap
set noswapfile
set nocompatible
syntax enable

" find files thought path
" use :find to find file
" use :b to find file that was already open
set path+=**
set wildmenu

" Need to create ctags to use tag jumping
" ^] to go to definetion
" g] to find reference

" auto complete
" ^n -> from any tags
" ^x^n -> from current tags
" ^x^f -> auto complete file path
" ^x^] -> for tags only
" ^x ^o -> default auto complete key bind from vim
" ^t to jumpback

" file browsing config
let g:netrw_banner=0 " disable banner
let g:netrw_browe_split=4 " open in prior window
let g:nettw_altv=1 " open splits to the right
let g:netrw_liststyle=3 " tree view
" v to h-split
" t to open in the new tab
" d to make a directory
" R rename
" D remove

" read can be used as snippets :)

" window split
" :sp
" :vsp
" :^w

" help
" :help  i -> help for i on normal mode
" need to figure out command from other modes

" yank and paste using X11 system clipboard
" to use this need to have vim-gtx (gvim)
set clipboard=unnamedplus

" automatic closing brackets and quotations
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>

filetype plugin indent on

set autowrite

" Go syntax highlighting
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 1

" Auto formatting and importing
let g:go_fmt_autosave = 1
let g:go_fmt_command = "goimports"

" Status line types/signatures
let g:go_auto_type_info = 1
