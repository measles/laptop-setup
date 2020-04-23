runtime! config/main.vim
filetype plugin indent on
syntax on

" Replace annoing beeps with annoing blinkings
set noeb vb 

" Адносная нумарацыя і абсалютны нумар для бягучага радка:
set relativenumber
set number

set smartindent
color murphy
set showcmd "для паказу каманд, што не пачынаюцца з :
set fileencodings=utf-8,cp1251,koi8-r,cp866

" адлюстроўваць нумары старонак
:set number
" падсвечваць вынікі пошуку
:set hls
" інкрэментны пошук
:set incsearch

" Выкарыстоўваць для LaTeX правілы TeX
let g:tex_flavor='latex'

" падключаць лакальныя настройкі Vim
:set exrc

" Настройкі для YAML
autocmd FileType yaml setlocal et ts=2 ai sw=2 nu sts=0
