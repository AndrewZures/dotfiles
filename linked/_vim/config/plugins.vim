set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" basic
Plugin 'gmarik/Vundle.vim'                  "bundle manager
Plugin 'scrooloose/nerdtree'                "file tree
Plugin 'scrooloose/syntastic'               "general linter
Plugin 'tpope/vim-surround'                 "quote/paren auto switch
Plugin 'bling/vim-airline'                  "vim status bar
Plugin 'tpope/vim-fugitive'                 "git actions in vim
Plugin 'kien/ctrlp.vim'                     "quick find files
Plugin 'vim-scripts/tComment'               "commenter
Plugin 'ervandew/supertab'                  "tab for autocomplete

"might not keep
Plugin 'vim-scripts/YankRing.vim'           "? yank history
Plugin 'airblade/vim-gitgutter'             "? vim gitgutter
Plugin 'sjl/splice.vim'                     "? merge tool

"languages
Plugin 'vim-ruby/vim-ruby'                  "ruby
Plugin 'tpope/vim-endwise'                  "ruby autocomplete
Plugin 'kchmck/vim-coffee-script'           "coffeescript
Plugin 'tpope/vim-fireplace'                "clojure
Plugin 'elixir-lang/vim-elixir'             "elixir
Plugin 'dag/vim2hs'                         "haskell
Plugin 'fatih/vim-go'                       "go
Plugin 'hdima/python-syntax'                "python

call vundle#end()
filetype plugin indent on

"GitGutter
let g:gitgutter_enabled = 0

"Nerd Tree
let NERDTreeMinimalUI           = 1
let NERDTreeQuitOnOpen          = 0
let NERDChristmasTree           = 1
let NERDTreeHighlightCursorline = 0
let NERDTreeWinSize             = 35
let NERDTreeDirArrows           = 1
let NERDTreeStatusline          = ' '
let NERDTreeShowHidden          = 1
let NERDTreeChDirMode           = 1
let NERDTreeShowLineNumbers     = 0
let NERDTreeMouseMode           = 2
let NERDTreeAutoCenter          = 1
let NERDTreeAutoCenterThreshold = 10
let NERDTreeIgnore              = ['\.git', '\.pyc', '\.jhw-cache']

" Syntastic
let g:syntastic_check_on_open=0
let g:syntastic_enable_signs=1
let syntastic_mode_map = { 'passive_filetypes': ['html', 'java'] }

"language specific linters
let g:syntastic_javascript_checkers =['jshint']
