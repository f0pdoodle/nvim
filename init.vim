"PLUGINS

call plug#begin('~/.config/nvim/autoload/plugged')

Plug 'scrooloose/NERDTree'
Plug 'folke/which-key.nvim'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'itchyny/lightline.vim'
Plug 'mhinz/vim-startify'
Plug 'ryanoasis/vim-devicons'
Plug 'rbgrouleff/bclose.vim'
Plug 'francoiscabrol/ranger.vim'
Plug 'justinmk/vim-sneak'
Plug 'chrisbra/Colorizer'
Plug 'matze/vim-move'
Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }
Plug 'kyazdani42/nvim-web-devicons' " Recommended (for colou9 icons)
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'octol/vim-cpp-enhanced-highlight'
"Plug 'jiangmiao/auto-pairs'

call plug#end( )

autocmd ColorScheme * hi SneakScope guifg=10 guibg=12 ctermfg=10 ctermbg=12 
let g:sneak#use_ic_scs = 1

"encoding
set encoding=utf-8

"colorscheme
silent! colorscheme delek " Custom color scheme

"syntax
syntax on

"z to write 
nnoremap z :w<ENTER>
nnoremap Z :wq<CR>
nnoremap <C-z> :q!<CR>

"clipboard
set clipboard=unnamedplus

"leader as space 
let mapleader = " "

"f to full delete t to delete replace 
nnoremap f "pdd
nnoremap t "pDi
nnoremap X xh 
nnoremap x "px

"parantheses 
autocmd BufRead,BufNewFile * syn match parens /[(){}]/ | hi parens ctermfg=13 ctermbg=none guifg=13 guibg=none

"append char after cursor position
nnoremap <C-a> a <ESC>r

"insert char at cursor position 
nnoremap <C-i>i <ESC>r

" bind = and \ to comment and uncomment1 C++
map \ :<SPACE>norm<SPACE>0xx<ENTER><CR>
map = :<SPACE>norm<SPACE>0i//<ENTER><CR>

"bind <leader>t to toggle colors
nnoremap <leader>' :ColorToggle<cr>

"bind <leader>r to read command 
nnoremap <leader>r :read<SPACE>!

"vim-move bindings
vmap <C-j> <Plug>MoveBlockDown
vmap <C-k> <Plug>MoveBlockUp
nmap <C-j> <Plug>MoveLineDown
nmap <C-k> <Plug>MoveLineUp

"leader m norm M read
nnoremap <C-m> : norm 
nnoremap M :read !

"sneak
map s <Plug>Sneak_s

"T as nerdtree
nnoremap T :NERDTree<cr>

"F as ranger
nnoremap F :Ranger<cr>

"startify no header
let g:startify_custom_header = []

"esc esc to remove hied search terms
nnoremap <esc><esc> :silent! nohls<cr>

" leader s spellcheck
map <leader>s :setlocal spell! spelllang=en_us<CR>

"vim sneak 
autocmd ColorScheme * hi Sneak guifg=black guibg=12 ctermfg=black ctermbg=12 
autocmd ColorScheme * hi SneakLabel guifg=15 guibg=10 ctermfg=15 ctermbg=10


"line numbers		
set number

"line wrapping
set linebreak 

"scroll
set scrolloff=1

"space v to reload vimrc
nnoremap <leader>v :silent! :so %<CR>

"bottom right splits
set splitright splitbelow

" Replace all is aliased to S.
nnoremap S :%s//g<Left><Left>

"vscode 
"nnoremap S :%s/
"nnoremap _ jA;<ESC>o
"autocmd BufRead scp://* :set bt=acwrite

"no swap files
set noswapfile

let g:lightline = { 
			\ 'colorscheme': '16color',
			\}
"search hiing
set hlsearch
set ignorecase
set incsearch
set smartcase
hi Search guibg=black guifg=12
hi Search cterm=NONE ctermfg=12 ctermbg=black

"theme settings
set cursorline
hi CursorLine ctermbg=8 ctermfg=none guifg=NONE guibg=#041b2a gui=none term=NONE cterm=NONE
hi CursorLineNr cterm=none ctermfg=10 gui=none guifg=10
hi LineNr ctermfg=12
hi MatchParen ctermfg=black ctermbg=13
hi Special    cterm=none ctermfg=9    gui=NONE guifg=9
hi Comment    cterm=none ctermfg=10     gui=NONE guifg=10
hi Type	      cterm=none ctermfg=11	     gui=bold guifg=11
hi Visual cterm=none ctermfg=none ctermbg=black  

"autocompletion
set wildmode =longest,list,full 

"disable auto comments
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

"check file in shellcheck
map <leader>s :!clear && shellcheck %<CR>

"K and J to go up and down 25 lines 
nnoremap K 25k 
nnoremap J 25j

"terminal escape
tnoremap <Esc> <C-\><C-n>
nnoremap <leader>t :terminal<CR>i

"tabstop 
set tabstop=4 shiftwidth=4 expandtab

"new tab
nnoremap <C-t> :tabnew <CR>

"Y to yank to end of line
nnoremap Y y$

"U to 9o 
nnoremap U <C-r>

" Go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

" In your init.lua or init.vim
lua << EOF
require("bufferline").setup{}
EOF
set showtabline=1
" which key
lua << EOF
  require("which-key").setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  }
EOF

"highlighs
hi Pmenu ctermfg=12 ctermbg=black
hi MsgSeparator ctermfg=black ctermbg=12
hi NvimFigureBrace ctermfg=15 ctermbg=9
hi SneakScope ctermfg=12 ctermbg=black 
hi Sneak ctermfg=13 ctermbg=black
hi SneakLabel ctermfg=10 ctermbg=black
hi VertSplit ctermfg=10 ctermbg=none
hi WildMenu ctermfg=12 ctermbg=black cterm=bold
hi IncSearch ctermfg=12 ctermbg=none
hi ColorColumn ctermfg=12 ctermbg=none
hi StatusLine ctermfg=12 ctermbg=none cterm=bold
hi StatusLineNC ctermfg=10 ctermbg=none cterm=NONE
hi StatusLineTerm ctermfg=13 ctermbg=none cterm=bold
hi StatusLineTermNC ctermfg=11 ctermbg=none cterm=NONE
hi VertSplit ctermfg=14 ctermbg=none cterm=NONE
hi ToolbarButton guifg=13 guibg=none gui=bold cterm=bold

set fillchars+=vert:\ 

"space 
nnoremap <leader><ENTER> :w<CR> :!g++ -o  %:r.out % -std=c++11<Enter>
nnoremap <leader><leader> :!./%:r.out<CR>

"update
nnoremap <leader>U :PlugUpdate<CR>
nnoremap <leader>u :PlugInstall<CR>

"emacs move in insert mode
imap <C-e> <ESC>A
imap <C-a> <ESC>I
imap <C-f> <ESC>la
imap <C-b> <ESC>i

"paste on line above with control p
nnoremap <leader>p O<ESC>pj
