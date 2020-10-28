set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

"Plugin 'mattn/emmet-vim'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'SirVer/ultisnips'
"Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'

" Syntax
"Plugin 'vim-syntastic/syntastic'
"Plugin 'derekwyatt/vim-scala'
"Plugin 'vim-scripts/Vim-R-plugin'
"Plugin 'jalvesaq/R-Vim-runtim'

" PHP
"Plugin 'stephpy/vim-php-cs-fixer'
"Plugin 'arnaud-lb/vim-php-namespace'

" Navigation
"Plugin 'ctrlpvim/ctrlp.vim'
"Plugin 'mileszs/ack.vim'
"Plugin 'scrooloose/nerdtree'
"Plugin 'craigemery/vim-autotag'
"Plugin 'easymotion/vim-easymotion'

" Color themes
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'w0ng/vim-hybrid'

call vundle#end()
filetype plugin indent on

syntax enable
"colorscheme minimalist
colorscheme purplish
au BufReadPost,BufNewFile *.java colorscheme minimalist
au BufReadPost,BufNewFile *.config,*.yaml,*.py colorscheme tomorrow-night
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
"set smartcase
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

set smartindent
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4

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
"
" status line setting
set statusline=%F%m%r%h%w\ 
set statusline+=[%{strlen(&fenc)?&fenc:&enc}]
set statusline+=%= " left/right separator
"set statusline+=%{fugitive#statusline()}\    
set statusline+=\ [%l\/%L,%c] " cursor column, line/total
set statusline+=\ %P\  " line percent

" =============================================================
"                      MAPPINGS
" =============================================================
 
" map ; to :
nnoremap ; :
nnoremap : ;

nnoremap j gj
nnoremap k gk

" list all loaded buffers and populates the prompt
nnoremap gb :ls<CR>:b<Space>
nnoremap <Leader>b :b

" Toggle highlight search
nnoremap <leader>h :set hls!<CR>

" Pane navigation
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" replace word with clipboard
nnoremap <leader>rw ciw<C-r>0<ESC>

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


set tags+=tags,tags.vendors
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
set wildignore+=*/public/*,*/storage/*
" Exclude files and directories
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll|js)$',
  \ }
" Ignore files in .gitignore
"let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
" When invoked, unless a starting directory is specified, 
" CtrlP will set its local working directory according to this variable:
" http://ctrlpvim.github.io/ctrlp.vim/#installation
let g:ctrlp_working_path_mode = 'ra'
nnoremap <leader>. :CtrlPTag<CR>
let g:ctrlp_map='<c-p>'
let g:ctrlp_cmd='CtrlPMRU'

" hightlight ctrlp selection
let g:ctrlp_buffer_func = { 'enter': 'BrightHighlightOn', 'exit':  'BrightHighlightOff', }
function BrightHighlightOn()
  hi CursorLine ctermfg=140
endfunction
function BrightHighlightOff()
  hi CursorLine ctermfg=NONE
endfunction

" YCM
nnoremap <leader>y :let g:ycm_auto_trigger=0<CR>
nnoremap <leader>Y :let g:ycm_auto_trigger=1<CR>
let g:ycm_keep_logfiles = 1
let g:ycm_log_level = 'critical'
let g:ycm_filetype_specific_completion_to_disable = {
  \ 'gitcommit': 1
  \}
"let g:ycm_auto_trigger=0

" NerdTree 
" fix NERTTree's root node
"autocmd BufEnter * if &ft !~ '^nerdtree$' | silent! lcd %:p:h | endif

" Ag
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" NERDTree
nnoremap <leader>nt :NERDTreeToggle<CR>

" php-cs-fixer
let g:php_cs_fixer_rules = "@PSR2"
"let g:php_cs_fixer_config_file = '.php_cs'
nnoremap <slient><leader>pcd :call PhpCsFixerFixDirectory()<CR>
nnoremap <slient><leader>pcf :call PhpCsFixerFixFile()<CR>

" Syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

let g:syntastic_mode_map = {'mode': 'passive', 'active_filetypes': [],'passive_filetypes': []}
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_php_checkers = ["php", "phpmd"]
"let g:syntastic_py_checkers = ["pylint", "python"]
let g:syntastic_loc_list_height = 3
let g:syntastic_quiet_messages = {
    \ "!level":  "errors",
    \ "type":    "style",
\ }

" Autotag
let g:autotagTagsFile = "tags"
"let g:autoTagDisabled = 1

" Auto import php
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>u <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>

" Easymotion
nmap s <Plug>(easymotion-overwin-f2)
nmap <Leader>f <Plug>(easymotion-overwin-f)

vmap '' :w !pbcopy<CR><CR>

