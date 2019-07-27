set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'


Plugin 'mattn/emmet-vim'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'

" Syntax
Plugin 'derekwyatt/vim-scala'
"Plugin 'vim-scripts/Vim-R-plugin'
"Plugin 'jalvesaq/R-Vim-runtim'
"Plugin 'shawncplus/phpcomplete.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'arnaud-lb/vim-php-namespace'

" Debugging
Plugin 'joonty/vdebug'

" Navigation
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'scrooloose/nerdtree'

" Color themes
Plugin 'chriskempson/vim-tomorrow-theme'
"Plugin 'altercation/vim-colors-solarized'
Plugin 'w0ng/vim-hybrid'

call vundle#end()
filetype plugin indent on

syntax enable
colorscheme purplish
"colorscheme Tomorrow-night
au BufReadPost,BufNewFile *.java colorscheme Tomorrow-night
set t_Co=256
"color base16-tomorrow-night
"let g:solarized_termcolors=256
" highlight parenthesis
highligh MatchParen cterm=bold ctermbg=none ctermfg=green

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
"set paste " writes key map (e.g. ^L). blocks ultisnip
"set backupdir=~/.tmp
"set directory=~/.tmp
"set guioptions-=T "remove toolbar
set ttyfast " enable fast-terminal

set enc=UTF-8
set fileencodings=UTF-8

" Disable Swap Files
set nobackup
set nowritebackup
set noswapfile

" ignore certain file for command-t
set wildignore+=*.pyc

"let g:pymode_python = 'python3' "use python3

" status line setting
set statusline=%F%m%r%h%w\ 
set statusline+=[%{strlen(&fenc)?&fenc:&enc}]
set statusline+=%= " left/right separator
set statusline+=%{fugitive#statusline()}\    
set statusline+=\ [%l\/%L,%c] " cursor column, line/total
set statusline+=\ %P\  " line percent

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

" Switch between panes 
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" toggle highlight search toggle
noremap <leader>h :noh<CR>

noremap <leader>ex :Explore<CR>

nnoremap <leader>rw ciw<C-r>0<ESC>
" =============================================================
"                 PLUGINS CONFIGURATION
" =============================================================

" UltiSnips configuration
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
"let g:UltiSnipsExpandTrigger="<c-l>"
" If you want :UltiSnipsEdit to split your window.
"let g:UltiSnipsEditSplit="vertical"
"let g:UltiSnipsSnippetsDir="~/.vim/UltiSnips"
"inoremap <c-l> <c-r>=UltiSnips#ExpandSnippet()<cr>


" emmet config
let g:user_emmet_install_global=0
autocmd FileType html,css,xml,php,js,jsx EmmetInstall
let g:user_emmet_leader_key='<C-e>'
"imap <C-e> :call emmet#expandAbbr(3,"")
"usage: ctrl+e ,


" Ctrl-p
nnoremap <leader>. :CtrlPTag<CR>
let g:ctrlp_buffer_func = { 'enter': 'BrightHighlightOn', 'exit':  'BrightHighlightOff', }

function BrightHighlightOn()
  hi CursorLine ctermfg=140
endfunction

function BrightHighlightOff()
  hi CursorLine ctermfg=NONE
endfunction

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
"let g:ycm_keep_logfiles = 1
"let g:ycm_log_level = 'debug'
let g:enable_ycm_at_startup = 0

" Ack
" Open a new tab and search 
nmap <leader>a :tab split<CR>:Ack ""<Left>
" Immediately search for the word under the cursor in a new tab.
nmap <leader>A :tab split<CR>:Ack <C-R><C-W><CR>


let g:vdebug_options = {
        \ 'break_on_open' : 1,
        \ 'server': '172.17.0.2',
        \ 'path_maps': { '/var/www/html' : '/Users/cdkkim/workspace/meshkorea/prime-main-server' },
        \ 'watch_window_style': 'compact'
        \}
"let g:vdebug_options['path_maps'] = {'/var/www/html' : '/Users/cdkkim/workspace/meshkorea/prime-main-server'}

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_loc_list_height = 3
"let g:syntastic_disabled_filetypes=['python']
let g:syntastic_mode_map = { 'mode': 'passive' }

"let g:syntastic_php_checkers = ['phpmd', 'php']
"let g:syntastic_py_checkers = ['pylint', 'python']

" easymotion
nmap s <Plug>(easymotion-overwin-f2)
nmap <Leader>f <Plug>(easymotion-overwin-f)

map <leader>nt :NERDTreeToggle<CR>

