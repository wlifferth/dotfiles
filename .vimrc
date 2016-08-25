set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here'
"
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
"filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" Colors
colorscheme ghostbuster    	        " set colorscheme
let g:ghostbuster_italics=1
set background=dark
syntax on
highlight Search ctermbg=green
syntax enable		                " enable syntax highlighting
" Tabs, Spaces and Deletes
set tabstop=4		                " number of visual spaces per TAB
set softtabstop=4	                " number of spaces in tab when editing
set shiftwidth=4
set expandtab		                " tabs are interpretted as spaces
set backspace=2
set autoindent

" UI Config
set number		                    " shows line numbers
set showcmd		                    " show command in bottom bar
set cursorline		                " highlight current line
filetype indent plugin on           " allows filetype detection
set wildmenu                        " visual autocomplete for command menu
set lazyredraw                      " only redraws the screen when necessary
set wrap lbr

" Timeouts
set timeoutlen=1000
set ttimeoutlen=10

" Searching
set incsearch                       " search as characters are entered
set hlsearch
set rtp+=~/.fzf

" Movement
nnoremap <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap <expr> j (v:count == 0 ? 'gj' : 'j')
inoremap jj <Esc>
" Ctrl-a goes to the beginning of the line
noremap <C-A> ^
" Ctrl-e goes to the end of the line
noremap <C-E> $
" map ; to : so you don't have to press shift
nnoremap ; : 
vnoremap ; :

" Spellcheck
command Spellcheck 'setlocal spell spelllang=en_us'
