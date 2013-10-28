" Forget being compatible with good ol' vi
set nocompatible

" Get that filetype stuff happening
filetype on
filetype plugin on
filetype indent on

" Turn on that syntax highlighting
syntax on

" Switching buffers when unsaved (Why is this not a default?)
set hidden

" Don't update the display while executing macros
set lazyredraw

" At least let yourself know what mode you're in
set showmode

" Enable enhanced command-line completion. Presumes you have compiled
" with +wildmenu.
set wildmenu

" Use system clipboard for copy/paste
set clipboard=unnamed

" Miscellaneous
set enc=utf-8
set term=ansi

" Colorschme
colorscheme solarized
