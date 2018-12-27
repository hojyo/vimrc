set clipboard=unnamedplus
set backspace=indent,eol,start
set number
set tabstop=2
set shiftwidth=2
set expandtab
set hlsearch

"dein Scripts-----------------------------
if &compatible
 set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/s1lk/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/s1lk/.cache/dein/')
 call dein#begin('/home/s1lk/.cache/dein/')

 " Let dein manage dein
 " Required:
 call dein#add('/home/s1lk/.cache/dein/repos/github.com/Shougo/dein.vim')

 " Add or remove your plugins here:
 call dein#add('Shougo/neosnippet.vim')
 call dein#add('Shougo/neosnippet-snippets')

 " You can specify revision/branch/tag.
 call dein#add('Shougo/deol.nvim', { 'rev': '01203d4c9' })

 " You can write plugin under culum
 call dein#add('scrooloose/nerdtree')
 call dein#add('Yggdroot/indentLine')

 " Required:
 call dein#end()
 call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable
map <C-e> :NERDTreeToggle<CR>

"
" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------
