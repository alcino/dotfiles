set nocompatible

call plug#begin('~/.vim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'brentyi/isort.vim'
Plug 'bronson/vim-trailing-whitespace'
Plug 'donRaphaco/neotex', { 'for': 'tex' }
Plug 'hanschen/vim-ipython-cell', { 'for': 'python' }
Plug 'iCyMind/NeoSolarized'
Plug 'jeetsukumaran/vim-filebeagle'
Plug 'jpalardy/vim-slime', { 'for': 'python' }
Plug 'junegunn/fzf.vim'
Plug 'mbbill/undotree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'psf/black', {'branch': 'stable'}
Plug 'raimondi/delimitmate'
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
call plug#end()

let g:coc_global_extensions=['coc-clangd', 'coc-cmake', 'coc-highlight', 'coc-json', 'coc-lists', 'coc-pyright', 'coc-sh', 'coc-snippets', 'coc-sql', 'coc-tabnine', 'coc-texlab', 'coc-xml']

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

let g:slime_target = "tmux"
let g:slime_default_config = {"socket_name": "default", "target_pane": "{last}"}

let g:isort_vim_options = '--profile black'

" map <F5> to save and run script
nnoremap <F5> :w<CR>:IPythonCellRun<CR>
inoremap <F5> <C-o>:w<CR><C-o>:IPythonCellRun<CR>

" map <F6> to evaluate current cell without saving
nnoremap <F6> :IPythonCellExecuteCell<CR>
inoremap <F6> <C-o>:IPythonCellExecuteCell<CR>

" map <F7> to evaluate current cell and jump to next cell without saving
nnoremap <F7> :IPythonCellExecuteCellJump<CR>
inoremap <F7> <C-o>:IPythonCellExecuteCellJump<CR>

nnoremap <F9> :UndotreeToggle<CR>
nnoremap <F10> :Black<CR>:Isort<CR>

nnoremap <C-T> :FZF<CR>
