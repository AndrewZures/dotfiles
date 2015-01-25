"leader
nmap , \

"pane attributes
set winwidth=90
set winminwidth=15

"general editor settings
set incsearch             "show currently matching patterns while typing search
set hlsearch  		        "highlight search results
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
set cursorline
set colorcolumn=80
set wildignore+=target
set paste

set list
set listchars=tab:\ \ ,trail:·


"editor tab settings
set textwidth=0         "set tab width
set nosmartindent       "<
set tabstop=2           "<
set shiftwidth=2        "<
set softtabstop=2       "<
set expandtab           "<

"toggle nerdtree
map <silent> <LocalLeader>nt :NERDTreeToggle<CR>

"find current file in nerdtree
map <silent> <LocalLeader>nf :NERDTreeFind<CR>

