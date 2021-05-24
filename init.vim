filetype plugin on
syntax enable

set backspace=indent,eol,start
set noerrorbells
set belloff=all
set shiftwidth=4 tabstop=4 softtabstop=4 expandtab autoindent smartindent cindent
set relativenumber
set nu
set smartcase
set noswapfile
set nobackup
set nowritebackup
set incsearch
set scrolloff=8
"set signcolumn=number
set hidden
set splitbelow splitright
set nocompatible
set termguicolors
"set complete
set completeopt=menuone,longest
set shortmess+=c
set makeprg=build.bat

call plug#begin(stdpath('data'))

Plug 'preservim/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/AutoComplPop'

" Themes
Plug 'joshdick/onedark.vim'
Plug 'sainnhe/gruvbox-material'
Plug 'arcticicestudio/nord-vim'
Plug 'wojciechkepka/vim-github-dark'
Plug 'ajmwagar/vim-deus'

call plug#end()

set noshowmode

" set t_Co=256
set background=dark cursorline
let g:gruvbox_material_disable_italic_comment = 1
"let g:nord_bold = 0
colorscheme gruvbox-material
highlight Statement gui=NONE
let g:airline_theme='gruvbox_material'

" Compile

function! s:build()
    let &makeprg='build'
    silent make
    botright copen
    wincmd p
endfunction

" Commands
let mapleader = " "
nnoremap <leader>e :NERDTreeToggle<CR>
nnoremap <leader>c :make :copen <CR>

command! Build call s:build()
nnoremap <leader>b :Build<CR>

map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>

inoremap <S-Tab> <C-i>
inoremap <expr> <Tab> pumvisible() ? "<C-y>" : "<Tab>"
inoremap <expr> <CR> pumvisible() ? "<C-y>" : "<CR>"
inoremap <expr> <Down> pumvisible() ? "<C-n>" : "<Down>"
inoremap <expr> <Up> pumvisible() ? "<C-p>" : "<Up>"

" Highlight TODO, FIXME, NOTE, STUDY, IMPORTANT etc.
if has('autocmd')
    augroup todo
        autocmd!
        autocmd Syntax * call matchadd(
                    \ 'Debug',
                    \ '\v\W\zs<(NOTE|INFO|IMPORTANT|TODO|FIXME|STUDY)>'
                    \ )
    augroup END
endif
