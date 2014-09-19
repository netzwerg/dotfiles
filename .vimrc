" Forget being compatible with good ol' vi
set nocompatible

" -- Start Vundle package management
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'terryma/vim-expand-region'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'vim-scripts/vimwiki'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" -- End Vundle package management

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

" Enable enhanced command-line completion.
set wildmenu

" Use system clipboard for copy/paste
set clipboard=unnamed

" Miscellaneous
set enc=utf-8
set gfn=Menlo\ Regular:h14
set number
set noswapfile
let g:netrw_dirhistmax = 0 " no more .netrwhist

" Practical Vim Tips - Search highlighting
set hls
" Practical Vim Tips - Start searching/highlighting immediately
set incsearch

" Colors
set t_Co=256
colorscheme zenmachine

" Filetypes
au BufNewFile,BufRead *.scala setf scala

" CtrlP ignores
set wildignore+=*.class,*.swp,*.zip

" Whitespace 
set expandtab
set tabstop=2
set shiftwidth=2

" VimWiki
let g:vimwiki_list = [{'path': '~/Dropbox/vimwiki'}]
