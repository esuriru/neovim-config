:set number
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

call plug#begin(stdpath('config') . '/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'preservim/nerdtree'
Plug 'Mofiqul/dracula.nvim'

Plug 'neoclide/coc.nvim', {'branch' : 'release'}

Plug 'andweeb/presence.nvim'

Plug 'terrortylor/nvim-comment'

call plug#end()

let g:NERDTreeDirArrowExpendable="+"
let g:NERDTreeDirArrowExpendable="~"

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

map <C-J> :bnext<CR>
map <C-K> :bprev<CR>

colorscheme dracula
