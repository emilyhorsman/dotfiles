call plug#begin('~/.vim/plugged')
Plug 'michalbachowski/vim-wombat256mod'
Plug 'othree/html5.vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'daltoad/vim-jade.git'
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-sensible'
Plug 'bling/vim-airline'
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-surround'
Plug 'kchmck/vim-coffee-script'
Plug 'tpope/vim-vinegar'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'ervandew/supertab'
Plug 'altercation/vim-colors-solarized'
Plug 'kien/ctrlp.vim'
Plug 'evidens/vim-twig'
Plug 'vim-scripts/SWIG-syntax'
Plug 'christoomey/vim-tmux-navigator'
call plug#end()

" https://github.com/tpope/vim-sensible
" Load sensible.vim first
runtime! plugin/sensible.vim

" OS X: ~/Library/LaunchAgents/environment.plist
" setenv DEV_HOME_DIRECTORY /path/to/dir/
" launchctl setenv DEV_HOME_DIRECTORY /path/to/dir/
if !empty($DEV_HOME_DIRECTORY)
  cd $DEV_HOME_DIRECTORY
endif

" http://stackoverflow.com/questions/127591/using-caps-lock-as-esc-in-mac-os-x

set noswapfile

set number

set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab

map <C-n> :NERDTreeToggle<CR>
map <C-/> :NERDComToggleComment<CR>

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

let g:UltiSnipsExpandTrigger="<C-b>"
let g:UltiSnipsJumpForwardTrigger="<C-b>"
let g:UltiSnipsJumpBackwardTrigger="<C-z>"

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
