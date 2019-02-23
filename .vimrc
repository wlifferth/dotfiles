" Colors
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
set vb                              " set the visualbell (so the audible bell is turned off)
set t_vb=                           " make the visalbell do nothing (so we no longer have bells)

" Timeouts
set timeoutlen=300
set ttimeoutlen=10

" Searching
set incsearch                       " search as characters are entered
set hlsearch
set rtp+=~/.fzf

" Movement
nnoremap <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap <expr> j (v:count == 0 ? 'gj' : 'j')
inoremap jj <Esc>l
" Ctrl-a goes to the beginning of the line
noremap <C-A> g^
" Ctrl-e goes to the end of the line
noremap <C-E> g$
" map ; to : so you don't have to press shift
nnoremap ; :
vnoremap ; :

" Spellcheck
command Spellcheck :setlocal spell spelllang=en_us

" File Stuff
set noswapfile

" Autocompmlete
function! Smart_TabComplete()
  let line = getline('.')                         " current line

  let substr = strpart(line, -1, col('.')+1)      " from the start of the current
                                                  " line to one character right
                                                  " of the cursor
  let substr = matchstr(substr, "[^ \t]*$")       " word till cursor
  if (strlen(substr)==0)                          " nothing to match on empty string
    return "\<tab>"
  endif
  let has_period = match(substr, '\.') != -1      " position of period, if any
  let has_slash = match(substr, '\/') != -1       " position of slash, if any
  if (!has_period && !has_slash)
    return "\<C-X>\<C-P>"                         " existing text matching
  elseif ( has_slash )
    return "\<C-X>\<C-F>"                         " file matching
  else
    return "\<C-X>\<C-O>"                         " plugin matching
  endif
endfunction

inoremap <tab> <c-r>=Smart_TabComplete()<CR>

" Turn spellcheck on by default in markdown files
autocmd BufRead,BufNewFile   *.md setlocal spell
autocmd BufRead,BufNewFile   *.md setlocal spelllang=en_us
