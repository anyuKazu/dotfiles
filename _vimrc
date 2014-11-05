"plugins
if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'
"add plgins
"javascript
NeoBundle 'jiangmiao/simple-javascript-indenter'
NeoBundle 'jelera/vim-javascript-syntax'
NeoBundle 'marijnh/tern_for_vim'
"jQuery
NeoBundle 'vim-scripts/jQuery'
"snippet
NeoBundle 'Shougo/neocomplcache.vim'
"indent
NeoBundle 'Yggdroot/indentLine'
"tab
NeoBundle 'thinca/vim-tabrecent'
"python
NeoBundle 'davidhalter/jedi-vim'
"qiita
NeoBundle 'mattn/qiita-vim'
"twitter
NeoBundle 'basyura/TweetVim'
"web-api
NeoBundle 'mattn/webapi-vim'
NeoBundle 'basyura/twibill.vim'
"browser
NeoBundle 'tyru/open-browser.vim'
"???
NeoBundle 'mattn/jscomplete-vim'
NeoBundle 'h1mesuke/unite-outline'
NeoBundle 'basyura/bitly.vim'
NeoBundle 'Shougo/unite.vim'
filetype plugin on
call neobundle#end()
NeoBundleCheck

"indentLine
let g:indentline_color_term = 111
let g:indentLine_color_gui = '708090'
let g:indentLine_char = '|'

"setting
set number
set title
set showmatch

"fileType
au BufNewFile,BufRead *.less setf less

"tab setting
set tabstop=4
set softtabstop=4
set shiftwidth=4

augroup vimrc
autocmd! FileType javascript setlocal shiftwidth=4 tabstop=4 softtabstop=4
autocmd! FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd! FileType css  setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd! FileType less  setlocal shiftwidth=2 tabstop=2 softtabstop=2
augroup END

set expandtab
set smartindent
set autoindent

syntax on
set ignorecase
set smartcase
set wrapscan
setl omnifunc=jscomplete#CompleteJS
hi Comment ctermfg=2
