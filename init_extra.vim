set nocompatible

call plug#begin('~/.vim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'bronson/vim-trailing-whitespace'
Plug 'davidhalter/jedi-vim'
Plug 'donRaphaco/neotex', { 'for': 'tex' }
Plug 'iCyMind/NeoSolarized'
Plug 'jeetsukumaran/vim-filebeagle'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mbbill/undotree'
Plug 'ncm2/ncm2'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-jedi'
Plug 'ncm2/ncm2-path'
Plug 'raimondi/delimitmate'
Plug 'roxma/nvim-yarp'
Plug 'tmux-plugins/vim-tmux'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'tpope/vim-characterize'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-speeddating'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'w0rp/ale'
call plug#end()

set hidden
set ignorecase
set smartcase
set visualbell
set cmdheight=2
set number
set pastetoggle=<F11>
map Y y$
set clipboard=unnamed
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>
set undodir=~/.vim/undodir
set undofile

noremap <C-a> <Home>
noremap <C-e> <End>
noremap! <C-a> <Home>
noremap! <C-e> <End>

set termguicolors
set background=light
colorscheme NeoSolarized

let g:filebeagle_show_hidden=1

let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1

nnoremap <F5> :UndotreeToggle<cr>

autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect
set shortmess+=c
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

nnoremap <C-T> :FZF<CR>
