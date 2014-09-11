" Forget being compatible with good ol' vi
set nocompatible

" Get that filetype stuff happening
filetype on
filetype plugin on
filetype indent on

" Turn on that syntax highlighting
syntax on

" Allow switching buffers even when unsaved
set hidden

" Don't update the display while executing macros
set lazyredraw

" At least let yourself know what mode you're in
set showmode

" Always display status line (with filename and modification indicator)
set laststatus=2

" Enable enhanced command-line completion. Presumes you have compiled
" with +wildmenu.
set wildmenu

" Use system clipboard for copy/paste
set clipboard=unnamed

" Miscellaneous
set enc=utf-8
set gfn=Menlo\ Regular:h14
set number
" Change dir to currently open editor's parent
set autochdir
set noswapfile

" Practical Vim Tips - Search highlighting
set hls
" Practical Vim Tips - Start searching/highlighting immediately
set incsearch

" Color
set t_Co=256
colorscheme tomorrow
