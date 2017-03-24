set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'mattn/emmet-vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'

" Syntax
Plugin 'derekwyatt/vim-scala'
"Plugin 'vim-scripts/Vim-R-plugin'
"Plugin 'jalvesaq/R-Vim-runtim'

" Navigation
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mileszs/ack.vim'

" Color themes
Plugin 'chriskempson/vim-tomorrow-theme'
"Plugin 'altercation/vim-colors-solarized'
Plugin 'w0ng/vim-hybrid'

call vundle#end()
filetype plugin indent on

syntax enable
colorscheme tomorrow-night
au BufReadPost,BufNewFile *.java colorscheme hybrid
set t_Co=256
let g:solarized_termcolors=256

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
"set autoindent
set cindent
set colorcolumn=+1
set mouse=a "enable mouse whell
set cursorline
set viminfo+=!
set showcmd
set showmatch
set nowrap
set backspace=indent,eol,start
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
"set autochdir " automatically set the current working directory
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

" ignore certain file for ctrl-p
set wildignore+=*.pyc,*/tmp/*,*.so,*.swp,*.zip 

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
autocmd FileType html,css,xml,php,js EmmetInstall
let g:user_emmet_leader_key='<C-e>'
"imap <C-e> :call emmet#expandAbbr(3,"")
"usage: ctrl+e ,


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


" ctrl-p
" Exclude files and directories
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ }
" Ignore files in .gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
" When invoked, unless a starting directory is specified, 
" CtrlP will set its local working directory according to this variable:
" http://ctrlpvim.github.io/ctrlp.vim/#installation
let g:ctrlp_working_path_mode = 'ra'
nnoremap <leader>. :CtrlPTag<CR>


" YCM
let g:ycm_keep_logfiles = 1
let g:ycm_log_level = 'debug'
let g:ycm_filetype_specific_completion_to_disable = {
  \ 'gitcommit': 1
  \}

" NerdTree 
" fix NERTTree's root node
"autocmd BufEnter * if &ft !~ '^nerdtree$' | silent! lcd %:p:h | endif

" Ag
leg g:ackprg = 'ag --notroup --nocolor --column'
