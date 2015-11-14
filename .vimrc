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
Plugin 'netzwerg/vim-zenmachine-colors'
Plugin 'junegunn/goyo.vim'
Plugin 'junegunn/limelight.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'jszakmeister/vim-togglecursor'
Plugin 'derekwyatt/vim-scala'
Plugin 'travitch/hasksyn'
Plugin 'tfnico/vim-gradle' 
Plugin 'ElmCast/elm-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" -- End Vundle package management

let mapleader = "\<Space>"

" Turn on that syntax highlighting
syntax on

" Allow switching buffers even when unsaved
set hidden

" Don't update the display while executing macros
set lazyredraw

" Always display status line (with filename and modification indicator)
set laststatus=2

" Enable enhanced command-line completion.
set wildmenu
set wildmode=longest:list,full

" Use system clipboard for copy/paste
set clipboard=unnamed

" Miscellaneous
set enc=utf-8
set gfn=MonacoB2:h14
set autochdir 
set noswapfile
let g:netrw_dirhistmax = 0 " no more .netrwhist

" Stop all beeping/flashing
set noeb vb t_vb=

" Row/column numbers
set ruler
set number

" Practical Vim Tips - Search highlighting
set hls
" Practical Vim Tips - Start searching/highlighting immediately
set incsearch

" Colors
set t_Co=256
let g:hybrid_use_Xresources = 1
colorscheme zenmachine
highlight LineNr ctermfg=darkgrey
highlight LineNr guifg=#333333

" Mode is already shown by statusline plugin
set noshowmode  
let g:lightline = {
            \ 'active': {
            \   'left': [ [ 'mode', 'paste' ],
            \             [ 'fugitive', 'readonly', 'filename', 'modified' ] ]
            \ },
            \ 'component': {
            \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
            \ },
            \ 'component_visible_condition': {
            \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
            \ }
            \ } 

" Whitespace 
set expandtab
set tabstop=4
set shiftwidth=4

" VimWiki
let g:vimwiki_list = [ {'path': '~/Dropbox/vimwiki', 'path_html': '~/Dropbox/vimwiki_html', 'ext': '.md', 'custom_wiki2html': '~/.vim/bundle/vimwiki/autoload/vimwiki/pandoc.py', 'auto_export': 1}]

" Goyo/Limelight
nnoremap <Leader>zen :Goyo<CR>
let g:limelight_default_coefficient = 0.8
autocmd User GoyoEnter Limelight
autocmd User GoyoLeave Limelight!

" Recently used files
set viminfo='10,<50,s10,h
nnoremap <Leader><Leader> :browse oldfiles<CR>

" Simple scrolling in blocks of 10 lines
noremap <C-j> 010j
noremap <C-k> 010k

" Habit breaking, habit making
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>

" Moving lines IntelliJ-style
nnoremap <D-S-Down> :m .+1<CR>==
nnoremap <D-S-Up> :m .-2<CR>==
inoremap <D-S-Down> <Esc>:m .+1<CR>==gi
inoremap <D-S-Up> <Esc>:m .-2<CR>==gi
vnoremap <D-S-Down> :m '>+1<CR>gv=gv
vnoremap <D-S-Up> :m '<-2<CR>gv=gv

" Disable scrollbars in MacVim
set guioptions+=L
set guioptions-=r

" Spreadsheet-like editing of tabular data
function! Excel()
    :setlocal shiftwidth=20
    :setlocal softtabstop=20
    :setlocal tabstop=20
    :setlocal nowrap
endfunction

" Reduce timeout after Esc
set ttimeout
set ttimeoutlen=20
set notimeout

" Underline the current line with e.g. dashes
nnoremap <C-u> yyp<c-v>$r
inoremap <C-u> <Esc>yyp<c-v>$r

" Git
set diffopt=vertical
