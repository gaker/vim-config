set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'gcmt/breeze.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'bling/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'kien/ctrlp.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'mileszs/ack.vim'
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'kchmck/vim-coffee-script'

" Color Themes
Plugin 'flazz/vim-colorschemes'

call vundle#end()            " required

if has("autocmd")
  filetype plugin indent on
endif
if has('syntax') && !exists('g:syntax_on')
  syntax enable
endif


syntax on
filetype plugin indent on    " required

colorscheme codeschool

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
set ruler

" javascript tabs
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2

" Comments (cmd+/)
map <D-/> :TComment<cr>
vmap <D-/> :TComment<cr>gv

" Indent lines with cmd+[ and cmd+]
nmap <D-]> >>
nmap <D-[> <<
vmap <D-[> <gv
vmap <D-]> >gv


" Fonts
set guifont=Monaco:h16


" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" Mouse support
if has('mouse')
  set mouse=a
endif

" Strip whitespace
autocmd FileType c,cpp,java,php,python,javascript,html autocmd BufWritePre <buffer> :%s/\s\+$//e

" Mustache / Handlebars
let g:mustache_abbreviations = 1


" Highlight things over the ruler length "
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%80v.\+/

" Hide *.pyc files
let NERDTreeIgnore = ['\.pyc$', '\.egg-info$']
