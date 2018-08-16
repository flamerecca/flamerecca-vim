source ~/.vimrc.bundles

" 檔案編碼
set encoding=utf-8
set fileencodings=utf-8,cp950

syntax on        " 語法上色顯示
colorscheme dracula
set t_Co=256 

" 編輯喜好設定                                                                                                                                                                                                    
set nocompatible " VIM 不使用和 VI 相容的模式
set ai           " 自動縮排
set shiftwidth=4 " 設定縮排寬度 = 4 
set tabstop=4    " tab 的字元數
set softtabstop=4
set expandtab   " 用 space 代替 tab

let g:airline_theme='term'

set ruler        " 顯示右下角設定值
set backspace=2  " 在 insert 也可用 backspace
set ic           " 設定搜尋忽略大小寫
set ru           " 第幾行第幾個字
set hlsearch     " 設定高亮度顯示搜尋結果
set incsearch    " 在關鍵字還沒完全輸入完畢前就顯示結果
set smartindent  " 設定 smartindent
set confirm      " 操作過程有衝突時，以明確的文字來詢問
set history=100  " 保留 100 個使用過的指令
set cursorline   " 顯示目前的游標位置

set laststatus=2
set statusline=%4*%<\%m%<[%f\%r%h%w]\ [%{&ff},%{&fileencoding},%Y]%=\[Position=%l,%v,%p%%]

" 顯示行號
:set nu
":set rnui 相對行號

"增加縮排，縮排設定檔在 .vim/indent/*.vim
filetype indent on
