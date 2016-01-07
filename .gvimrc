"---------------------------
" Encode
"---------------------------
set langmenu=ja_jp.utf-8

"---------------------------
" Display
"--------------------------- 
set background=dark
colorscheme hybrid
syntax on
set number
set title
set showcmd
set ruler
set showmatch
set textwidth=0 "自動的に改行が入るのを無効化
set laststatus=2
set list "不可視文字の可視化
au GUIEnter * simalt ~x "入力中に素早くjjと入力した場合はESCとみなす
inoremap jj <Esc>

set visualbell t_vb= "ビープ音を無効にする
set noerrorbells "エラー時にビープ音を鳴らさない

nnoremap ss :<C-u>sp<CR> "水平に分割
nnoremap sv :<C-u>vs<CR> "縦に分割

"ウィンドウ間をカーソルが移動
nnoremap sh <C-w>h "左に移動
nnoremap sj <C-w>j "下に移動
nnoremap sk <C-w>k "上に移動
nnoremap sl <C-w>l "右に移動
nnoremap sw <C-w>w "次に移動

"ウィンドウが移動
nnoremap sH <C-w>H "左に移動
nnoremap sJ <C-w>J "下に移動
nnoremap sK <C-w>K "上に移動
nnoremap sL <C-w>L "右に移動
nnoremap sr <C-w>r "回転

"カレントウィンドウのサイズ変更
nnoremap s> <C-w>> "幅を増やす
nnoremap s< <C-w>< "幅を減らす
nnoremap s+ <C-w>+ "高さを増やす
nnoremap s- <C-w>- "高さを減らす


"日本語入力ON時のカーソルの色を設定
if has('multi_byte_ime') || has('xim')
    highlight CursorIM guibg=Orange guifg=NONE
endif

"フォントの設定
set guifont=Ricty_Diminished:h14
set rop=type:directx

