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
if has('win32')
    set makeprg=build.bat
else
    set makeprg=build.sh
endif
set noshowmode
set shortmess+=c

" Native completion
set completeopt=menuone,longest

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

