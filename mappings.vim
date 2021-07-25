" Compile
function! s:build()
    if has('win32')
        let &makeprg='build'
    else
        let &makeprg='bash build.sh'
    endif
    silent make
    botright copen
    wincmd p
endfunction

function! s:launch()
    if has('win32')
        let &makeprg='launch'
    else
        let &makeprg='bash launch.sh'
    endif
    silent make
endfunction

let mapleader = " "
nnoremap <leader>e :NERDTreeToggle<CR>
nnoremap <leader>c :make :copen <CR>

command! Build call s:build()
command! Launch call s:launch()
nnoremap <leader>b :Build<CR>
nnoremap <leader>m :Launch <CR>

nmap <leader>gs :G<CR>
nmap <leader>gh :diffget //3<CR>
nmap <leader>gu :diffget //2<CR>

map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>

