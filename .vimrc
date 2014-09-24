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
Plugin 'tpope/vim-surround'
Plugin 'netzwerg/vimwiki'
Plugin 'junegunn/goyo.vim'
Plugin 'junegunn/limelight.vim'

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
set wildmode=longest:list,full

" Use system clipboard for copy/paste
set clipboard=unnamed

" Miscellaneous
set enc=utf-8
set gfn=Menlo\ Regular:h14
set autochdir 
set noswapfile
let g:netrw_dirhistmax = 0 " no more .netrwhist

" Row/column numbers
set ruler
set number

" Practical Vim Tips - Search highlighting
set hls
" Practical Vim Tips - Start searching/highlighting immediately
set incsearch

" Colors
set t_Co=256
colorscheme zenmachine

" Filetypes
au BufNewFile,BufRead *.scala setf scala

" Whitespace 
set expandtab
set tabstop=2
set shiftwidth=2

" VimWiki
let g:vimwiki_list = [{'path': '~/Dropbox/vimwiki', 'ext': '.txt'}]

" Goyo/Limelight
nnoremap <Leader>zen :Goyo<CR>
let g:limelight_default_coefficient = 0.8
autocmd User GoyoEnter Limelight
autocmd User GoyoLeave Limelight!

" Recently used files
set viminfo='10,<50,s10,h
nnoremap <Leader>\ :browse oldfiles<CR>
