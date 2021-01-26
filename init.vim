filetype plugin indent on
syntax on

set backspace=indent,eol,start
set noerrorbells
set belloff=all
set shiftwidth=4 tabstop=4 softtabstop=4 expandtab autoindent smartindent
set relativenumber
set nu
set smartcase
set noswapfile
set nobackup
set nowritebackup
set incsearch
set scrolloff=8
set signcolumn=number
set hidden
set splitbelow splitright

call plug#begin(stdpath('data'))

Plug 'gruvbox-community/gruvbox'
Plug 'arcticicestudio/nord-vim'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'

" Completion

Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug '9mm/vim-closer'

call plug#end()

"set t_Co=256
set background=dark
colorscheme gruvbox

let g:airline_theme = 'base16'

" LSP
:lua << EOF
    local nvim_lsp = require('lspconfig')
    local on_attach = function(_, bufnr)
        require('completion').on_attach()
    end
    local servers = {'clangd'}
    for _, lsp in ipairs(servers) do
        nvim_lsp[lsp].setup {
            on_attach = on_attach,
        }
    end
EOF

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"

inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

set completeopt=menuone,noinsert,noselect

set shortmess+=c

nnoremap <silent>gd    <cmd>lua vim.lsp.buf.declaration()<CR>

nnoremap <silent><c-]> <cmd>lua vim.lsp.buf.definition()<CR>

nnoremap <silent>K     <cmd>lua vim.lsp.buf.hover()<CR>

" Explorer
let mapleader = " "
nnoremap <learder>e :NERDTreeToggle<CR>

" Completion
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

