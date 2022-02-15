" common
set number
set hlsearch
set ignorecase
" set foldmethod=indent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
filetype indent on

" show command char
set wrap
set listchars=tab:▸\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
set showbreak=↪
nnoremap <leader>l :set list!<cr>

syntax on

colorscheme gruvbox

" mapper
let mapleader=','
let g:mapleader=','

inoremap jj <Esc>`^
" leader+w save
inoremap <leader>w <Esc>:w<cr>
noremap <leader>w :w<cr>

" switch window
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" sudo to write, linux
cnoremap w!! w !sudo tee % >/dev/null

call plug#begin()

" welcome page
Plug 'mhinz/vim-startify'
" theme
Plug 'morhetz/gruvbox'
" status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" indent tab line
Plug 'yggdroot/indentline'

" file directory
Plug 'preservim/nerdtree'
" file search
Plug 'ctrlpvim/ctrlp.vim'
Plug 'easymotion/vim-easymotion'

Plug 'tpope/vim-surround'

Plug 'brooth/far.vim'

" golang
" Plug 'fatih/vim-go', { 'do': 'GoUpdateBinaries' }

call plug#end()

nnoremap <leader>n :NERDTreeFocus<cr>
nnoremap <C-n> :NERDTree<cr>
nnoremap <C-t> :NERDTreeToggle<cr>
nnoremap <C-f> :NERDTreeFind<cr>
" autocmd VimEnter * NERDTree
let NERDTreeShowHidden = 1
let NERDTreeIgnore = [
	\ '\.git$', 
	\ ]

let g:ctrlp_map = '<c-p>'

nmap ss <Plug>(easymotion-s2)

lua require('plugins')
