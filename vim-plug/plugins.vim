call plug#begin('~/.config/nvim/autoload/plugged')

Plug 'scrooloose/NERDTree'
Plug 'folke/which-key.nvim'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'itchyny/lightline.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mhinz/vim-startify'
Plug 'ryanoasis/vim-devicons'
Plug 'rbgrouleff/bclose.vim'
Plug 'francoiscabrol/ranger.vim'
Plug 'justinmk/vim-sneak'
Plug 'chrisbra/Colorizer'
Plug 'matze/vim-move'
Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }
Plug 'kyazdani42/nvim-web-devicons' " Recommended (for coloured icons)
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

call plug#end( )
