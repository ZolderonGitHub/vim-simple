call plug#begin(stdpath('data'))

" Mains
Plug 'preservim/nerdtree'
"Plug 'jiangmiao/auto-pairs'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/AutoComplPop'
Plug 'sheerun/vim-polyglot'

" completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Concentration
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/vim-slash'

" git
Plug 'tpope/vim-fugitive'

" File finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Themes
Plug 'joshdick/onedark.vim'
Plug 'sainnhe/gruvbox-material'
Plug 'arcticicestudio/nord-vim'
Plug 'wojciechkepka/vim-github-dark'
Plug 'ajmwagar/vim-deus'
Plug 'junegunn/seoul256.vim'

call plug#end()
