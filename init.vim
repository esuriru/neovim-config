" NOTE: This init.vim is hyperlinked to the path of $MYVIMRC

syntax enable
set encoding=UTF-8
set number
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set mouse=a
set ruler
set hidden
set nowrap
set autoindent
set cursorline

call plug#begin(stdpath('config') . '/plugged')

" Status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" File management
Plug 'preservim/nerdtree'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }

Plug 'kdheepak/lazygit.nvim'


" Dracula Theme
" Plug 'Mofiqul/dracula.nvim'
Plug 'dracula/vim', { 'as': 'dracula' }

Plug 'neoclide/coc.nvim', {'branch' : 'release'}

" Discord Prescence
Plug 'andweeb/presence.nvim'

Plug 'terrortylor/nvim-comment'
Plug 'natecraddock/workspaces.nvim'
Plug 'OmniSharp/omnisharp-vim'
Plug 'cdelledonne/vim-cmake'

Plug 'lewis6991/gitsigns.nvim'

" Double braces 
" Plug 'tmsvg/pear-tree'

" Always load as last
Plug 'ryanoasis/vim-devicons'

call plug#end()

" let g:NERDTreeDirArrowExpendable="+"
" let g:NERDTreeDirArrowExpendable="~"

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

map <C-J> :bnext<CR>
map <C-K> :bprev<CR>

" For dracula colours to work
if (has("termguicolors"))
	set termguicolors
endif

" let g:dracula_italic = 0

colorscheme dracula

" inoremap <silent><expr> <cr> coc#pum#visible() && coc#pum#info()['index'] != -1 ? coc#pum#confirm() : "\<C-g>u\<CR>"
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"


let s:config_path = fnamemodify(expand("$VIM"), ':h:h') . '\config' " Get the path equivalent to $VIM\..\..\config (where I'm putting my config files)

let &rtp .= ',' . s:config_path " Add custom runtime path

" Source the init.vim file
exec 'source ' . s:config_path . '\themes\airline.vim'  


