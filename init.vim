"By: Joaquin Varela
"Versión de vimrc: Nicolás Zapata
"https://www.youtube.com/channel/UCw1Ipy5_P1OL0zUJMfYC7-A"

syntax on
set number
set mouse=a
set clipboard=unnamed
set ruler
set encoding=utf-8
set modifiable
set showmatch
set sw=2
set relativenumber
set cursorline
set termguicolors
set linebreak
set noshowmode
set noswapfile
set nobackup
set incsearch
set ignorecase
set nohlsearch
let mapleader = " "
set laststatus=2
set backspace=2
set guioptions-=T
set guioptions-=L
set bg=light
set shell=wsl


"---------------------------------vim config----------------------------
"Get out of insert mode white
"Salir de modo insertar
imap jk <Esc>
imap <C-c> <Esc>l
"mueve bloques de codigo en modo visual o V-Line
"Moves Blocks of code in visual mode or V-Line
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv 

" Better indenting
" Mejor Indentación
vnoremap < <gv
vnoremap > >gv

"-------------------------------Plugins-------------------------------
"Plugins
call plug#begin('~/.vim/plugged')
" Temas
" Themes
Plug 'sheerun/vim-polyglot'
Plug 'rakr/vim-one'
Plug 'jeffkreeftmeijer/vim-dim'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
"" Vim - devicons
"Plug 'ryanoasis/vim-devicons'

Plug 'easymotion/vim-easymotion'
 "Nerdtree
Plug 'preservim/nerdtree'
"Navigate with C-h C-l C-j C-k
"Navegar con C-h C-l C-j C-k
Plug 'christoomey/vim-tmux-navigator'

" LightLine
Plug 'itchyny/lightline.vim'

" Stable version of coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Close pairs () [] {} ''
"Cerrar los pares () [] {} '' 
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
"FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim',
"Pdf Reader for Vim
Plug 'makerj/vim-pdf'

call plug#end()

source $HOME/AppData/Local/nvim/plugins/plug-config.vim
"--------------------------------Plugins Config--------------------------------------------
"save file
"guardar archivo
nmap <leader>w :w <CR>
"cerrar ventana
"close current  window
nmap <C-w> :q <CR>
nmap <leader>q :q <CR>
nmap <leader>so :so%<CR>
"search commands 
"comandos de busqueda
nmap <leader>gs  :CocSearch
nmap <leader>fs :FZF<CR>
nmap <leader>rg :Rg<CR>

" Create Blank Newlines and stay in Normal mode
nnoremap <silent> zj o<Esc>k
nnoremap <silent> zk O<Esc>j

"abrir Nerdtree
"open nerdtree
map <leader>t :NERDTreeFind<CR>
"Buscar dos carácteres con easymotion
"Search for two chars with easymotion
nmap <Leader>s <Plug>(easymotion-s2)

" Borrar palabras de frente con ctrl + o
inoremap <C-o> <C-o>dw

" TAB in general mode will move to text buffer
" TAB en modo normal se moverá al siguiente buffer
nnoremap <silent> <TAB> :bnext<CR>
" SHIFT-TAB will go back
" SHIFT-TAB va para atras 
nnoremap <silent> <S-TAB> :bprevious<CR>
"close buffer
"cerrar buffer
nmap <leader>bd :bdelete<CR>

set laststatus=2
"Close tags automatically
"Cerrar tags automaticamente
let g:closetag_filenames = '*.html,*.xhtml,*.phtml, *.jsx, *.js'
"-----------------------------------------------------------------

" Lightline
let g:lightline = {
      \ 'colorscheme': 'one',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

colorscheme one


lua require('basic')
lua require('settings')

