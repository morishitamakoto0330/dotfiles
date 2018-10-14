if has('vim_starting')
	set nocompatible	" Be iMproved

	" Required:
	set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'Townk/vim-autoclose'
NeoBundle 'grep.vim'
NeoBundle 'Yggdroot/indentLine'
NeoBundle 'TwitVim'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'Shougo/neocomplete.vim'

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
call neobundle#end()

"neocomplete
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_ignore_case = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#enable_auto_select = 1
let g:neocomplete#enable_enable_camel_case_completion = 0
if !exists('g:neocomplete#keyword_patterns')
	let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns._ = '\h\w*'
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

"colorscheme
colorscheme molokai
syntax on
let g:molokai_original = 1
let g:rehash256 = 1
set t_Co=256

" indentLine
let g:indentLine_color_term = 111
let g:indentLine_color_gui = '#708090'
let g:indentLine_char = '|'
set list listchars=tab:\|\ 

"行番号表示
set number

" vim-latex
set shellslash
set grepprg=grep\ -nH\ $*

let g:Tex_CompileRule_dvi = 'platex --interaction=nonstopmode $*'
let g:Tex_BibtexFlavor = 'fbibtex'
let g:Tex_CompileRule_pdf = 'dvipdfmx $*.dvi'

let g:Tex_ViewRule_dvi = 'xdvi'
let g:Tex_ViewRule_pdf = 'evince'

let g:tex_flavor='latex'

" twitvim
" let twitvim_proxy = "proxy.anan-nct.ac.jp:8080"
" let twitvim_proxy_login = "1132334:makotom0330"
let twitvim_login = "makotom0330_2:makotom0330@mkt"

set shiftwidth=2
set tabstop=2
set backspace=indent,eol,start
set completeopt=menuone
