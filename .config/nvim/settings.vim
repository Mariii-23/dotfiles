"augroup auFileTypes
"  autocmd!
"  autocmd FileType markdown setlocal textwidth=80
"augroup end
"
"if (empty($TMUX))
"  if (has("nvim"))
"    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"  endif
"  if (has("termguicolors"))
"    set termguicolors
"  endif
"endif

augroup auFileTypes
  autocmd!
  autocmd FileType markdown setlocal textwidth=80
augroup end

set termguicolors     " enable true colors support
filetype on
filetype plugin indent on


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable
"colorscheme tokyonight
"colorscheme nisha
" colorscheme palenight
" colorscheme miramare
colorscheme default

set colorcolumn=80
set number relativenumber
"set number
"set noshowmode
set showmode
set mouse=a

set cindent smarttab autoindent smartindent
"set ignorecase smartcase
set cindent autoindent smartindent
set completeopt-=preview "make clang complete not preview and just complete
set splitbelow splitright
set autochdir
set icm=nosplit

set history=100
set clipboard=unnamedplus

set path+=**                    " Searches current directory recursively.
set wildmenu                    " Display all matches when tab complete.
set incsearch                   " Incremental search
set hidden                      " Needed to keep multiple buffers open
"set nobackup                    " No auto backups
"set noswapfile                  " No swap
set t_Co=256                    " Set if term supports 256 colors.
let g:rehash256 = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab                   " Use spaces instead of tabs.
set smarttab                    " Be smart using tabs ;)
set shiftwidth=2                " One tab == four spaces.
set tabstop=2                   " One tab == four spaces.
set nuw=2                       " width of the line number column



""" Parenthesis
set showmatch "show matching parenthesis
"Pode nao funcionar bem ?!
inoremap ( ()<esc>:")"<cr>i
inoremap { {}<esc>:"}"<cr>i
inoremap [ []<esc>:"]"<cr>i

"...
let ayucolor="light"  " for light version of theme
let ayucolor="mirage" " for mirage version of theme
let ayucolor="dark"   " for dark version of theme

colorscheme ayu
"colorscheme tokyonight


let g:deoplete#enable_at_startup = 1

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
autocmd FileType c ClangFormatAutoEnable
au BufRead,BufNewFile * setlocal textwidth=80
autocmd! BufNewFile,BufRead,BufReadPre,BufWritePost *.h set filetype=c
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags "autocomplete html
autocmd! BufWritePre * %s/\s\+$//e "clear trailing whitespace

autocmd Filetype markdown colorscheme base16-gruvbox-dark-medium

set nuw=2 "width of the line number column

autocmd FileType make set noexpandtab

command Json set syntax=json


augroup Mkdir
  autocmd!
  autocmd BufWritePre * call mkdir(expand("<afile>:p:h"), "p")
augroup END


"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter


" Function to change transparency
let t:is_transparent = 1
function! Toggle_transparent_background()
  if t:is_transparent == 0
    hi Normal guibg=#111111 ctermbg=black
    let t:is_transparent = 1
  else
    hi Normal guibg=NONE ctermbg=NONE
    let t:is_transparent = 0
  endif
endfunction
nnoremap <C-t> :call Toggle_transparent_background()<CR>

augroup reach
  au!
  autocmd BufNewFile,BufRead *.rsh set syntax=javascript
augroup END
