nnoremap <C-c> "+y

" change tab
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <C-h> :tabprevious<CR>
nnoremap <C-l> :tabnext<CR>
nnoremap <C-H> <C-W><C-H>noremap <C-x> "+d


" nerd tree close and open
nnoremap <C-n> :NERDTree<CR>
"nnoremap <C-m> :NERDTreeClose<CR>


""""""""" Split
set splitbelow splitright

" Navigating files

" Make adjusing split sizes
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>

" Remap slpits navigation to just CTRL + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap s :%s/\<<C-r><C-w>\>/
nnoremap S :%s//g<Left><Left>
vnoremap s :%s/\<<C-r><C-w>\>/

" leader = \
map <Leader>th <C-w>t<C-w>H
map <Leader>tk <C-w>t<C-w>K


""
nnoremap <leader>z :set foldmethod=indent<CR>
au FileType c nnoremap <leader>r :call CompileC()<CR>
fu! CompileC()
    write
    if filereadable('makefile') || filereadable('Makefile')
        make
    else
        make %:r
        !./%:r
    endif
endfu
