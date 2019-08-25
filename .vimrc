" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

Plug 'nanotech/jellybeans.vim'

Plug 'sjl/badwolf'

Plug 'jiangmiao/auto-pairs'

Plug 'scrooloose/nerdtree'

Plug 'vim-airline/vim-airline'

Plug 'vim-airline/vim-airline-themes'

Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

Plug 'neovimhaskell/haskell-vim'
Plug 'wting/lhaskell.vim'

Plug 'airblade/vim-gitgutter'

Plug 'valloric/youcompleteme'

Plug 'mateusbraga/vim-spell-pt-br'

Plug 'w0rp/ale'

Plug 'christoomey/vim-tmux-navigator'

Plug 'ryanoasis/vim-devicons'

Plug 'luochen1990/rainbow'

Plug 'godlygeek/tabular'

Plug 'octol/vim-cpp-enhanced-highlight'

"Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'

Plug 'blindfs/vim-taskwarrior'

Plug 'kchmck/vim-coffee-script'

Plug 'the-lambda-church/coquille'
Plug 'jvoorhis/coq.vim'
Plug 'def-lkb/vimbufsync'

Plug 'https://github.com/davidbalbert/vim-io'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

filetype plugin indent on	" required

colorscheme jellybeans

let g:jellybeans_use_term_italics = 1

au FileType scheme let b:AutoPairs = {'[':']', '{':'}','"':'"', '`':'`'}
au FileType ruby let b:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'",'"':'"', '`':'`', '|':'|', '/':'/'}

let g:rainbow_active = 0

augroup scheme
	autocmd!

	autocmd FileType scheme setlocal ts=4 sts=4 sw=4 expandtab
augroup end

set backspace=indent,eol,start
set clipboard=unnamedplus


"Pandoc command
command! Pandoc !pandoc "%" -o "%:r.pdf"

inoremap jk <esc>

nmap Q :close<enter>

"tabs > spaces
augroup python
	autocmd!

	autocmd FileType python setlocal ts=4 sts=4 sw=4 noexpandtab
augroup end

set tabstop=4 "visual of a tab
set softtabstop=4 "mechanics of a tab
set number "show line numbers

"setting line wrapping
set textwidth=0

"auto indentation
set shiftwidth=4
set autoindent
set smartindent

"better highlighting
let g:cpp_class_scope_highlight = 1
let g:cpp_class_decl_highlight = 1

"search highlighting
set hlsearch
set incsearch
nnoremap <CR> :noh<CR><CR>

let g:haskell_indent_disable = 1 "disbles haskellvim's auto indentation
let g:ycm_autoclose_preview_window_after_completion = 1
"let g:ycm_exclude_preview = 1
"let g:airline_exclude_preview = 1

let g:ale_linters = {'haskell': ['hdevtools', 'hlint'], 'python': ['pylint', 'mypy']}
let g:ale_fixers = {'haskell': ['hlint']}

" movement mappings
" move vertically by visual line
nnoremap j gj
nnoremap k gk
" move through split panes with ctrl-<button>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

autocmd! User GoyoEnter Limelight "Goyo integration
autocmd! User GoyoLeave Limelight!

let g:limelight_conceal_ctermfg = 'gray'

inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

let g:airline_powerline_fonts = 1
set guifont=Meslo_LG_S_for_Powerline:h11

syntax enable
