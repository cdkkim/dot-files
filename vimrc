set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'mattn/emmet-vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'tpope/vim-surround'

" Syntax
Plugin 'derekwyatt/vim-scala'
"Plugin 'vim-scripts/Vim-R-plugin'
"Plugin 'jalvesaq/R-Vim-runtim'

" Navigation
Plugin 'wincent/command-t'

" Color themes
Plugin 'chriskempson/vim-tomorrow-theme'

call vundle#end()
filetype plugin indent on

syntax enable
colorscheme tomorrow-night
set t_Co=256
" change cursor in insert mode
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

let mapleader=","
let maplocalleader=","

set laststatus=2 "show status bar
set clipboard=unnamed
set history=1000
set ruler
set so=7 "allow rooms
set hlsearch
set incsearch
set ignorecase "make search case insensitive
set smartcase
set autoindent
set colorcolumn=+1
set mouse=a "enable mouse whell
set cursorline
set viminfo+=!
set showcmd
set showmatch
set nowrap
set tabstop=2
set softtabstop=2
set expandtab
set shiftwidth=2
set foldlevel=2
set number
set relativenumber
set linebreak
set autoread
set autowrite
set wrap
set shell=bash
set wildmenu
"set paste " writes key map (e.g. ^L). blocks ultisnip
"set backupdir=~/.tmp
"set directory=~/.tmp
"set guioptions-=T "remove toolbar

set enc=UTF-8
set fileencodings=UTF-8

" Disable Swap Files
set nobackup
set nowritebackup
set noswapfile

" ignore certain file for command-t
set wildignore+=*.pyc

"let g:pymode_python = 'python3' "use python3


" =============================================================
"                      MAPPINGS
" =============================================================
 
" map ; to :
nmap ; :

nnoremap j gj
nnoremap k gk

" list all loaded buffers and populates the prompt
nnoremap gb :ls<CR>:b<Space>
nnoremap <Leader>b :b

" =============================================================
"                 PLUGINS CONFIGURATION
" =============================================================

" UltiSnips configuration
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-l>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetsDir="~/.vim/UltiSnips"
"inoremap <c-l> <c-r>=UltiSnips#ExpandSnippet()<cr>


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

" R Plugin 
" send selection to R with space bar
"vmap <Space> <Plug>RDSendSelection
" send line to R with space bar
"nmap <Space> <Plug>RDSendLine
" to open R automatically in a terminal
"let vimrplugin_applescript=0
"let vimrplugin_vsplit=0

" YCM
let g:ycm_keep_logfiles = 1
let g:ycm_log_level = 'debug'
