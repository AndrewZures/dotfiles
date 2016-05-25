set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" basic
Plugin 'gmarik/Vundle.vim'                  "bundle manager
Plugin 'andrewzures/nerdtree'                "file tree with my custom tab settings
Plugin 'scrooloose/syntastic'               "general linter
Plugin 'tpope/vim-surround'                 "quote/paren auto switch
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'                 "git actions in vim
Plugin 'kien/ctrlp.vim'                     "quick find files
Plugin 'vim-scripts/tComment'               "commenter
Plugin 'ervandew/supertab'                  "tab for autocomplete
" Emmett Needed

"languages
Plugin 'tpope/vim-endwise'                  "ruby autocomplete
Plugin 'skalnik/vim-vroom'                  "in vim testing
Plugin 'kchmck/vim-coffee-script'           "coffeescript
Plugin 'pangloss/vim-javascript'            "javascript
Plugin 'mxw/vim-jsx'                        "jsx
Plugin 'tpope/vim-fireplace'                "clojure
Plugin 'kien/rainbow_parentheses.vim'       "rainbow parens for clojure
Plugin 'dag/vim2hs'                         "haskell
Plugin 'lambdatoast/elm.vim'                "elm
Plugin 'rust-lang/rust.vim'                 "rust
Plugin 'rking/ag.vim'
Plugin 'raichoo/purescript-vim'             "purescript
" Plugin 'tpope/vim-cucumber'                 "cucumber syntax highlight
" Plugin 'tpope/vim-rails'                    "rails stuff
" Plugin 'mtscout6/vim-cjsx'                  "cjsx highlighting
" Plugin 'marijnh/tern_for_vim'               "javascript analyzer
" Plugin 'guns/vim-clojure-static'            "clojure highlighting
" Plugin 'guns/vim-clojure-highlight'         "clojure extended highlighting
" Plugin 'vim-erlang/vim-erlang-runtime'      "erlang
" Plugin 'elixir-lang/vim-elixir'             "elixir
" Plugin 'fatih/vim-go'                       "go
" Plugin 'hdima/python-syntax'                "python
" Plugin 'jcfaria/Vim-R-plugin'               "R

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

autocmd QuickFixCmdPost *grep* cwindow

"extends jsx highlighting to .js files
let g:jsx_ext_required = 0

" Syntastic
let g:syntastic_check_on_open=0
let g:syntastic_enable_signs=1
let syntastic_mode_map = { 'passive_filetypes': ['html', 'java'] }

"language specific linters
" let g:syntastic_javascript_checkers =['eslint']
let g:syntastic_disabled_filetypes=['js']

"cntrl P ignore list
let g:ctrlp_custom_ignore = {
      \ 'dir': 'node_modules\|git\|db/data\|tmp\|vendor\|public',
      \ 'file': '.zip\|.png\|.gif\|.jpeg\|.jpg\|.gz\|.tar\|.dmg',
      \ }

"Airline
let g:airline_powerline_fonts=1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#branch#empty_message = 'nobranch'
"default section layout abc on left, xyz on right
let g:airline#extensions#default#layout = [
    \ [ 'a', 'c' ],
    \ [ 'z', 'warning' ]
    \ ]
