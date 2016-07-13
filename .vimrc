set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.vim/bundle')

Plugin 'gmarik/Vundle.vim'
" install plugins here
Plugin 'vim-scripts/Vim-R-plugin'
Plugin 'jalvesaq/R-Vim-runtime'
Plugin 'derekwyatt/vim-scala'
Plugin 'mattn/emmet-vim'
Plugin 'wincent/command-t'

call vundle#end()
filetype plugin indent on

" theme set up
set omnifunc=syntaxcomplete#Complete
set number
syntax enable    " use syntax highlighting
let g:solarized_termcolors=256
set background=dark
colorscheme tomorrow-night
"colorscheme jellybeans

let mapleader=","
let maplocalleader=","

set clipboard=unnamed
set history=1000
set ruler
set so=7 " allow rooms
set showmode
set hlsearch
set incsearch
set ignorecase " make searches case insensitive
" set wrap
set showmatch
set backspace=2
set autoindent
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set autowrite
set cursorline
set linespace=0
" set textwidth=80
set colorcolumn=+1
set mouse=a             " automatically enable mouse usage
set foldmethod=indent
set foldlevel=2

set enc=UTF-8
set fileencodings=UTF-8
set ai
set nu
set paste

" save and quit
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>

" list all loaded buffers and populates the prompt
nnoremap gb :ls<CR>:b<Space>
nnoremap <Leader>b :b

" ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>                                                                                                                       
nmap <silent> <c-j> :wincmd j<CR>                                                                                                                       
nmap <silent> <c-h> :wincmd h<CR>                                                                                                                       
nmap <silent> <c-l> :wincmd l<CR>

" open/close tabs
nmap <c-t> :tabnew<CR>
nmap <c-w> :close<CR>

" use Ctrl-c for ESC 
imap <c-c> <Esc>
" map ; to :
nmap ; :

" fold with space
nnoremap <Space> za

" hlsearch toggle
nnoremap <F3> :set hlsearch!<CR>
nnoremap j gj
nnoremap k gk

" Disable Swap Files
set nobackup
set nowritebackup
set noswapfile

" ignore certain file for command-t
set wildignore+=*.pyc

" R Plugin 
" send selection to R with space bar
vmap <Space> <Plug>RDSendSelection
" send line to R with space bar
nmap <Space> <Plug>RDSendLine
" to open R automatically in a terminal
let vimrplugin_applescript=0
let vimrplugin_vsplit=0

" emmet config
let g:user_emmet_install_global=0
autocmd FileType html,css EmmetInstall
let g:user_emmet_leader_key='<C-e>'
"imap <C-e> :call emmet#expandAbbr(3,"")

set tags=./tags,tags
" sort scala imports
let g:scala_sort_across_gropus=1
let g:scala_first_party_namespaces='\(controllers\|views\|models\|util\|de.\)'

" https://browsereload-macvim.readthedocs.org/en/latest/
let g:returnApp="iTerm"
