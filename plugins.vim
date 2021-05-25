call plug#begin(stdpath('data'))

Plug 'preservim/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/AutoComplPop'
Plug 'sheerun/vim-polyglot'

" File finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Themes
Plug 'joshdick/onedark.vim'
Plug 'sainnhe/gruvbox-material'
Plug 'arcticicestudio/nord-vim'
Plug 'wojciechkepka/vim-github-dark'
Plug 'ajmwagar/vim-deus'
call plug#end()
