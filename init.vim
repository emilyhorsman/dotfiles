call plug#begin('~/.vim/plugged')
Plug 'joshdick/onedark.vim'
Plug 'osyo-manga/vim-over'
Plug 'othree/html5.vim'
Plug 'cakebaker/scss-syntax.vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'ervandew/supertab'
Plug 'kien/ctrlp.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'rust-lang/rust.vim'
Plug 'hdima/python-syntax'
Plug 'elmcast/elm-vim'
Plug 'neovimhaskell/haskell-vim'
Plug 'Shougo/vimproc', {'do': 'make'}
Plug 'eagletmt/ghcmod-vim'
Plug 'othree/yajs'
Plug 'mxw/vim-jsx'
Plug 'leafgarland/typescript-vim'
Plug 'prettier/vim-prettier'
call plug#end()

set mouse=a

filetype plugin on

set noswapfile

set number
set ruler
set cursorline
set showmatch

set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab

map <C-n> :NERDTreeToggle<CR>

colorscheme onedark

let mapleader=","

" Easy window navigation
noremap <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

nnoremap <Leader>h :split<enter>
nnoremap <Leader>v :vsplit<enter>

vmap <Enter> <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" Python settings
au BufRead,BufNewFile *py,*pyw set tabstop=8
au BufRead,BufNewFile *py,*pyw set shiftwidth=4
au BufRead,BufNewFile *py,*pyw set softtabstop=4

set rtp+=/usr/local/opt/fzf

" Rust settings
let g:rustfmt_autosave = 1

" vim-prettier
let g:prettier#autoformat_config_present = 1
let g:prettier#exec_cmd_async = 1
