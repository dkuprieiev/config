syntax on
set nocompatible
if empty(glob("~/.vim/autoload/plug.vim"))
    execute '!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif
call plug#begin('~/.vim/plugged')
    Plug 'junegunn/vim-plug'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
"    Plug 'tomasr/molokai'
"    Plug 'skielbasa/vim-material-monokai'
    Plug 'joshdick/onedark.vim'
    Plug 'preservim/nerdtree'
    Plug 'sheerun/vim-polyglot'
    " ...
call plug#end()
    " The caveat is that you should *never* use PlugUpgrade
delc PlugUpgrade
set background=dark
set termguicolors
colorscheme onedark
" Option for scheme material-monokai
" let g:materialmonokai_italic=1
" let g:materialmonokai_subtle_spell=1

set showcmd		" Show (partial) command in status line.
set number 
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif
set title " Show file name in bar
set showmatch
set autoread 
set t_Co=256
autocmd! bufwritepost $MYVIMRC source $MYVIMRC
set scrolloff=3 
set wrap 
set linebreak 
set hlsearch 
set ruler  
set ch=1 
set laststatus=2 
set statusline=%f%m%r%h%w\ %y\ enc:%{&enc}\ %=\ col:%2c\ line:%2l/%L\ [%2p%%]
set cursorline
set wildmenu 
filetype plugin indent on
let g:airline_powerline_fonts=1
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types\ 12
set encoding=utf-8
"set paste
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set splitright
" Tab kay map
nnoremap th :tabnew<CR>
nnoremap tk :tabnext<CR>
nnoremap tj :tabprevious<CR>
nnoremap td :tabclose<CR>


" vim-airline
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" Use modeline overrides
set modeline
set modelines=10

set title
set titleold="Terminal"
set titlestring=%F
set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\
" vim-airline
let g:airline_powerline_fonts = 1
"let g:airline_theme = 'materialmonokai'
let g:airline_theme = 'onedark'
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_skip_empty_sections = 1

" NERD Tree
nnoremap <leader>n :NERDTreeFocus<CR>
" nnoremap <C-n> :NERDTree<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
