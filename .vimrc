set encoding=utf-8
scriptencoding utf-8

" vi互換モードをオフ(Vimの拡張機能を有効化)
set nocompatible

" #####表示設定#####
set title "編集中のファイル名表示
syntax on "コードの色分け
set list "不可視文字の可視化
set number "行番号の表示
set textwidth=80
set wrap "長いテキストの折り返し
set showmatch "対応するカッコなどをハイライト表示

" #####入力関連#####
set expandtab "タブ入力を複数の空白入力に置き換える
set tabstop=4 "インデントをスペース4つに
set shiftwidth=4 "自動インデントでずれる幅
set softtabstop=4 "連続した空白に対してタブキーやバックスペースで動く幅
set smartindent "オートインデント
set virtualedit=all "カーソルを文字が無い部分でも動けるように
set backspace=indent,eol,start "バックスペースで消せるように

set wildmenu "コマンドライン補完を便利に
set infercase "補完時に大文字小文字を区別しない
set clipboard=unnamed "クリップボードをWindowsと連携
set smarttab "新しい行を作った時に高度な自動インデントを行う
set hidden "変更中のファイルでも保存せずに他のファイルを表示

nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k

" #####検索関連#####
set ignorecase "大文字小文字の区別なく検索
set incsearch "インクリメンタルサーチ
set hlsearch "検索マッチテキストをハイライト
set wrapscan "検索時に最後までいったら最初に戻る

set backupdir=C:\Users\Arae\vimbackupfiles
set noundofile
set noswapfile

" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if has("vim_starting")
    if &compatible
        set nocompatible "Be iMproved
    endif

    " Required:
    set runtimepath+=$HOME/.vim/bundle/neobundle.vim/
endif

" Required
call neobundle#begin(expand("$HOME/.vim/bundle/"))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch "Shougo/neobundle.vim"

" My Bundle here:
NeoBundle "Shougo/unite.vim"
NeoBundle "Shougo/neocomplete"
NeoBundle "ujihisa/unite-colorscheme"
NeoBundle "davidhalter/jedi-vim"
NeoBundle "thinca/vim-quickrun"
NeoBundle "b4b4r07/vim-shellutils"
NeoBundle "scrooloose/nerdtree"
NeoBundle "Yggdroot/indentLine"

" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conbeniently prompt you to install them.
NeoBundleCheck

"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : ''
    \ }

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" 隠しファイルをデフォルトで表示
let NERDTreeShowHidden =1
