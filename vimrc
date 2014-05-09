set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'scrooloose/nerdtree'
Bundle "tpope/vim-surround"
Bundle "gcmt/breeze.vim"
Bundle 'tomtom/tcomment_vim'
Bundle 'bling/vim-airline'
Bundle 'airblade/vim-gitgutter'
Bundle 'kien/ctrlp.vim'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle "honza/vim-snippets"
Bundle 'Rykka/riv.vim'

" Color Themes
Bundle 'flazz/vim-colorschemes'

call vundle#end()            " required

colorscheme Monokai

if has("autocmd")
  filetype plugin indent on
endif
if has('syntax') && !exists('g:syntax_on')
  syntax enable
endif


syntax on
filetype plugin indent on    " required

set autoindent
set complete-=i
set noerrorbells                " No beeps
set number                      " Show line numbers
set backspace=indent,eol,start  "
set showcmd
set showmode                    " Show current mode
set noswapfile                  " Don't create swap files
set nobackup                    " Don't create backup files

set showmatch                   " Don't show matching brackets by flickering
set hlsearch                    " Highlight found searches
set ignorecase                  " Search case insensitive
set ttimeout
set ttimeoutlen=50

set encoding=utf-8
set tabstop=4 shiftwidth=4 expandtab
set listchars=tab:▒░,trail:▓
set list

" Fonts
set guifont=Monaco:h16


" Mouse support
if has('mouse')
  set mouse=a
endif


" Highlight things over the ruler length "
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%80v.\+/
