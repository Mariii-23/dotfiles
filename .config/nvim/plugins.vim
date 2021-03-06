if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))

    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
" plugins

call plug#begin(stdpath('data') . '/plugged')

"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
"Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
"Plug 'cohama/lexima.vim'
"Plug 'preservim/nerdtree'
"Plug 'sheerun/vim-polyglot'
"Plug 'godlygeek/tabular'
"Plug 'octol/vim-cpp-enhanced-highlight'
""Plug 'Shougo/deoplete.nvim'
""Plug 'zchee/deoplete-clang'
"Plug 'mattn/emmet-vim'
"Plug 'alvan/vim-closetag'
"Plug 'dkarter/bullets.vim'
"Plug 'chrisbra/unicode.vim'
"Plug 'itspriddle/vim-shellcheck'
"Plug 'dense-analysis/ale'
"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"Plug 'junegunn/fzf.vim'
"Plug 'ap/vim-css-color'
"Plug 'tpope/vim-surround'
"Plug 'Sammyalhashe/random_colorscheme.vim'
"Plug 'rhysd/vim-clang-format'
"Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
"Plug 'kyazdani42/nvim-web-devicons'
""themes
"Plug 'tomasiser/vim-code-dark'
"Plug 'wadackel/vim-dogrun'
"Plug 'joshdick/onedark.vim'
"Plug 'arcticicestudio/nord-vim'
"Plug 'ntk148v/vim-horizon'
"Plug 'morhetz/gruvbox'
"Plug 'phanviet/vim-monokai-pro'
"Plug 'dracula/vim', { 'as': 'dracula' }
"Plug 'chriskempson/base16-vim'
"Plug 'ghifarit53/tokyonight-vim'
"Plug 'sainnhe/sonokai'
"Plug 'ayu-theme/ayu-vim'
"Plug 'drewtempelmeyer/palenight.vim'
"Plug 'arzg/vim-colors-xcode'
"Plug 'rakr/vim-one'
"Plug 'liuchengxu/space-vim-dark'
"Plug 'jacoborus/tender.vim'
"Plug 'srcery-colors/srcery-vim'
"Plug 'wadackel/vim-dogrun'
"Plug 'ajmwagar/vim-deus'
"Plug 'franbach/miramare'
"call plug#end()


Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'cohama/lexima.vim'
Plug 'preservim/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'godlygeek/tabular'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'Shougo/deoplete.nvim'
Plug 'zchee/deoplete-clang'
Plug 'mattn/emmet-vim'
Plug 'alvan/vim-closetag'
Plug 'dkarter/bullets.vim'
Plug 'chrisbra/unicode.vim'
Plug 'itspriddle/vim-shellcheck'
Plug 'dense-analysis/ale'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ap/vim-css-color'
Plug 'tpope/vim-surround'
Plug 'Sammyalhashe/random_colorscheme.vim'
Plug 'rhysd/vim-clang-format'
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
Plug 'kyazdani42/nvim-web-devicons'
Plug 'junegunn/goyo.vim'
Plug 'voldikss/vim-floaterm'
Plug 'axvr/org.vim'
Plug 'rust-lang/rust.vim'

"Plug 'b3nj5m1n/kommentary'

"Plug 'neovim/nvim-lspconfig'
"Plug 'hrsh7th/nvim-compe'

" Plug 'elixir-lsp/coc-elixir', {'do': 'yarn install && yarn prepack'}
"Plug 'neoclide/coc.nvim', { 'branch': 'release' }
" Plug 'amiralies/coc-elixir', {'do': 'yarn install && yarn prepack'}

"Themes
Plug 'tomasiser/vim-code-dark'
Plug 'wadackel/vim-dogrun'
Plug 'joshdick/onedark.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'ntk148v/vim-horizon'
Plug 'morhetz/gruvbox'
Plug 'phanviet/vim-monokai-pro'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'chriskempson/base16-vim'
Plug 'ghifarit53/tokyonight-vim'
Plug 'sainnhe/sonokai'
Plug 'ayu-theme/ayu-vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'arzg/vim-colors-xcode'
Plug 'rakr/vim-one'
Plug 'liuchengxu/space-vim-dark'
Plug 'jacoborus/tender.vim'
Plug 'srcery-colors/srcery-vim'
Plug 'wadackel/vim-dogrun'
Plug 'ajmwagar/vim-deus'
Plug 'franbach/miramare'
Plug 'heraldofsolace/nisha-vim'


call plug#end()

let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#clang#clang_complete_database = 1
let g:ale_c_clang_options = '-x c'
let g:ale_c_clangtidy_options = '-x c'
let g:ale_echo_msg_format = '%linter%: %s'
let g:ale_linters = {
    \ 'rust' : ['analyzer'],
    \ 'c': ['ccls', 'clangtidy', 'clangcheck'],
    \ 'cpp': ['ccls','g++','clangtidy','clang++'],
    \ 'tex': ['alex', 'chktex', 'proselint', 'redpen',
    \         'texlab', 'textlint', 'vale', 'writegood']
    \ }

let g:ale_rust_cargo_check_tests = 1
let g:ale_rust_cargo_default_feature_behavior = 'all'
let g:ale_rust_cargo_use_clippy = executable('cargo-clippy')
" this doesn't work
let g:ale_rust_analyzer_config = {
              \ 'rust': {
              \   'clippy_preference': 'on',
              \   'procMacro': { 'enable': v:true },
              \ },
              \ 'procMacro': { 'enable': v:true },
              \ 'cargo': { 'loadOutDirsFromCheck': v:true },
              \ }
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1

let g:neoformat_enabled_python = ['yapf']
let g:airline_powerline_fonts = 1
let g:airline_theme='deus'
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#tabline#enabled = 1
let airline#extensions#tabline#tabs_label = ''
let airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#fnamecollapse = 1
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#buffers_label = ''
let g:airline#extensions#tabline#fnamemod = ':t'
let g:ale_sign_error = '>>'
let b:ale_enabled = 1
let g:ale_fixers = { 'elixir': ['mix_format'] ,'rust': ['rustfmt'] }
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'

" Bullets.vim
let g:bullets_enabled_file_types = [
    \ 'markdown',
    \ 'text',
    \ 'gitcommit',
    \ 'scratch'
    \]
let g:airline#extensions#ale#enabled = 1
let g:ale_fix_on_save = 1
let g:random_scheme = 1
let g:clang_format#style_options = {
        \ "AlignAfterOpenBracket": "AlwaysBreak",
        \ "AlignConsecutiveAssignments": 'true',
        \ "AlignConsecutiveDeclarations": 'true',
        \ "AlignEscapedNewlines": "Left",
        \ "AlignOperands": 'true',
        \ "AlignTrailingComments": 'true',
        \ "AllowAllParametersOfDeclarationOnNextLine": 'true',
        \ "AllowShortBlocksOnASingleLine": 'false',
        \ "AllowShortCaseLabelsOnASingleLine": 'false',
        \ "AllowShortFunctionsOnASingleLine": "Inline",
        \ "AllowShortIfStatementsOnASingleLine": "WithoutElse",
        \ "AllowShortLoopsOnASingleLine": 'true',
        \ "AlwaysBreakAfterReturnType": "None",
        \ "AlwaysBreakBeforeMultilineStrings": 'false',
        \ "AlwaysBreakTemplateDeclarations": 'Yes',
        \ "BinPackArguments": 'false',
        \ "BinPackParameters": 'false',
        \ "BreakAfterJavaFieldAnnotations": 'true',
        \ "ColumnLimit": '80',
        \ "CompactNamespaces": 'false',
        \ "ConstructorInitializerAllOnOneLineOrOnePerLine": 'true',
        \ "Cpp11BracedListStyle": 'true',
        \ "DerivePointerAlignment": 'false',
        \ "IncludeBlocks": "Regroup",
        \ "IndentCaseLabels": 'true',
        \ "IndentPPDirectives": "AfterHash",
        \ "IndentWidth": '2',
        \ "KeepEmptyLinesAtTheStartOfBlocks": 'true',
        \ "MaxEmptyLinesToKeep": '1',
        \ "NamespaceIndentation": "Inner",
        \ "PointerAlignment": "Left",
        \ "ReflowComments": 'true',
        \ "SortIncludes": 'true',
        \ "SpaceAfterCStyleCast": 'true',
        \ "SpaceAfterTemplateKeyword": 'false',
        \ "SpaceBeforeAssignmentOperators": 'true',
        \ "SpaceBeforeCpp11BracedList": 'false',
        \ "SpaceBeforeCtorInitializerColon": 'false',
        \ "SpaceBeforeInheritanceColon": 'false',
        \ "SpaceBeforeParens": "ControlStatements",
        \ "SpaceBeforeRangeBasedForLoopColon": 'true',
        \ "SpaceInEmptyParentheses": 'false',
        \ "SpacesInAngles": 'false',
        \ "SpacesInCStyleCastParentheses": 'false',
        \ "SpacesInContainerLiterals": 'false',
        \ "SpacesInParentheses": 'false',
        \ "SpacesInSquareBrackets": 'false',
        \ "TabWidth": '2',
        \ "UseTab": "Never",
        \ 'BreakBeforeBraces' : 'Custom',
        \ 'BraceWrapping' : {
        \   'AfterFunction' : 'false',
        \   'BeforeElse' : 'true',
        \  },
        \ }
