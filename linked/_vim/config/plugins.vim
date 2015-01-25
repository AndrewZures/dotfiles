set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" basic
Plugin 'gmarik/vundle'                      "bundle manager
Plugin 'scrooloose/nerdtree'                "file tree
Plugin 'scrooloose/syntastic'               "general linter
Plugin 'tpope/vim-surround'                 "quote/paren auto switch
Plugin 'bling/vim-airline'                  "vim status bar
Plugin 'tpope/vim-fugitive'                 "git actions in vim
Plugin 'kien/ctrlp.vim'                     "quick find files
Plugin 'vim-scripts/tComment' 		          "commenter

"languages
Plugin 'kchmck/vim-coffee-script'           "coffeescript
Plugin 'tpope/vim-fireplace'                "clojure
Plugin 'elixir-lang/vim-elixir'             "elixir
Plugin 'dag/vim2hs'                         "haskell

"color schemes
Plugin 'altercation/vim-colors-solarized'
Plugin 'chriskempson/tomorrow-theme'

call vundle#end()
filetype plugin indent on

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
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1

"language specific linters
let g:syntastic_javascript_checkers =['jshint']
