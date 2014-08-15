set rtp+=~/.vim/bundles/Vundle.vim
call vundle#begin()

" basic
Plugin 'gmarik/vundle'                       "bundle manager
Plugin 'scrooloose/nerdtree'                 "file tree
Plugin 'scrooloose/syntastic'                "general linter
Plugin 'tpope/vim-surround'                  "quote/paren auto switch
Plugin 'bling/vim-airline'                   "vim status bar
Plugin 'mattn/gist-vim'                      "vim -> gist
Plugin 'airblade/vim-gitgutter'              "git info in vim gutter
Plugin 'tpope/vim-fugitive'                  "git actions in vim
Plugin 'kien/ctrlp.vim'                      "quick find files
Plugin 'vim-scripts/tComment' 		     "commenter

"languages
Plugin 'kchmck/vim-coffee-script'            "coffeescript
Plugin 'tpope/vim-fireplace'                  "clojure

"color schemes
Plugin 'altercation/vim-colors-solarized'
Plugin 'chriskempson/tomorrow-theme'

call vundle#end()
filetype plugin indent on


" set nocompatible
"
" filetype off

