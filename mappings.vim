" Compile
function! s:build()
    let &makeprg='build'
    silent make
    botright copen
    wincmd p
endfunction

function! s:launch()
    let &makeprg='launch'
    silent make
endfunction

let mapleader = " "
nnoremap <leader>e :NERDTreeToggle<CR>
nnoremap <leader>c :make :copen <CR>

command! Build call s:build()
command! Launch call s:launch()
nnoremap <leader>b :Build<CR>
nnoremap <leader>m :Launch <CR>

map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>

inoremap <S-Tab> <C-i>
inoremap <expr> <Tab> pumvisible() ? "<C-y>" : "<Tab>"
inoremap <expr> <CR> pumvisible() ? "<C-y>" : "<CR>"
inoremap <expr> <Down> pumvisible() ? "<C-n>" : "<Down>"
inoremap <expr> <Up> pumvisible() ? "<C-p>" : "<Up>"
