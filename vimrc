call plug#begin('~/.vim/plugged')
Plug 'osyo-manga/vim-over'
Plug 'othree/html5.vim'
Plug 'cakebaker/scss-syntax.vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'digitaltoad/vim-jade'
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-sensible'
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-surround'
Plug 'kchmck/vim-coffee-script'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'ervandew/supertab'
Plug 'kien/ctrlp.vim'
Plug 'evidens/vim-twig'
Plug 'vim-scripts/SWIG-syntax'
Plug 'christoomey/vim-tmux-navigator'
Plug 'rust-lang/rust.vim'
Plug 'hdima/python-syntax'
call plug#end()

" https://github.com/tpope/vim-sensible
" Load sensible.vim first
runtime! plugin/sensible.vim

filetype plugin on

set noswapfile

set number
set cursorline
set showmatch

set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab

map <C-n> :NERDTreeToggle<CR>
map <C-\> :NERDComToggleComment<CR>

colorscheme Tomorrow-Night

let mapleader=","

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

nnoremap <Leader>h :split<enter>
nnoremap <Leader>v :vsplit<enter>

vmap <Enter> <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" Remove scrollbars
if has("gui_running")
  set guioptions+=LlRrb
  set guioptions-=LlRrb
endif

autocmd BufRead,BufNewFile *.mustache set filetype=html

set timeoutlen=1000 ttimeoutlen=0
" Change cursor shape in tmux vim
" 7.4.687 required for t_SR
" https://github.com/vim/vim/releases/tag/v7.4.687
if has("patch-7.4-687")
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
endif

" Allow mouse to resize buffers
set mouse+=a
if has("mouse_sgr")
    set ttymouse=sgr
else
    set ttymouse=xterm2
end

" Change colour of highlighted current line number.
hi CursorLineNr guifg=LightBlue ctermfg=LightBlue

" Python settings
au BufRead,BufNewFile *py,*pyw set tabstop=8
au BufRead,BufNewFile *py,*pyw set shiftwidth=4
au BufRead,BufNewFile *py,*pyw set softtabstop=4
