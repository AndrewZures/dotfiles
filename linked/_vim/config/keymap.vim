"leader
nmap , \

"pane attributes
set winwidth=90
set winminwidth=15

"general editor settings
set incsearch             "show currently matching patterns while typing search
set hlsearch              "highlight search results
set number                "add line numbers
set showmatch             "briefly jump to matching bracket
set hidden                "<
set ruler                 "<
set wrap                  "<
set scrolloff=5
set nofoldenable
set nocompatible
set laststatus=2
set ignorecase
set smartcase
set colorcolumn=80
set wildignore+=target
set backspace=indent,eol,start

set nopaste              "default to no paste mode (helps with indentation)
set noswapfile           "will not create .swp files
set nobackup
set nowritebackup

set nocompatible      " We're running Vim, not Vi!
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

"disable esc key -  use cntrl-c instead
inoremap <esc> <nop>

"use ; instead of : for command
nnoremap ; :

set list
set listchars=tab:\ \ ,trail:·

"apply highlight to additional file types
au BufNewFile,BufRead *.hiccup set filetype=clojure
au BufNewFile,BufRead *.cljs set filetype=clojure
au BufNewFile,BufRead *.ejs set filetype=html
" autocmd FileType ruby compiler ruby

hi Search    ctermbg=none ctermfg=none cterm=underline
hi IncSearch ctermbg=none ctermfg=none cterm=bold,underline

"editor tab settings
set textwidth=0         "set tab width
set nosmartindent       "<
set tabstop=2           "<
set shiftwidth=2        "<
set softtabstop=2       "<
set expandtab           "<


" NerdTree
map <silent> <LocalLeader>nt :NERDTreeToggle<CR>
map <silent> <LocalLeader>nf :NERDTreeFind<CR>

" Control P
map <Leader>t :CtrlP<CR>
