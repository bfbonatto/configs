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

Plug 'airblade/vim-gitgutter'

Plug 'valloric/youcompleteme'

Plug 'mateusbraga/vim-spell-pt-br'

Plug 'w0rp/ale'

Plug 'christoomey/vim-tmux-navigator'

Plug 'ryanoasis/vim-devicons'

Plug 'luochen1990/rainbow'

Plug 'godlygeek/tabular'

Plug 'octol/vim-cpp-enhanced-highlight'

Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'

Plug 'blindfs/vim-taskwarrior'

Plug 'bitc/vim-hdevtools'

Plug 'tpope/vim-surround'

Plug 'easymotion/vim-easymotion'

Plug 'leafgarland/typescript-vim'
Plug 'kchmck/vim-coffee-script'

Plug 'tpope/vim-fugitive'

Plug 'dhruvasagar/vim-table-mode'

Plug 'reedes/vim-wordy'

Plug 'shirk/vim-gas'

Plug 'kh3phr3n/python-syntax'

Plug 'jpalardy/vim-slime'

Plug 'xolox/vim-easytags'

Plug 'xolox/vim-misc'

Plug 'wlangstroth/vim-racket'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

filetype plugin indent on	" required

colorscheme jellybeans

let g:jellybeans_use_term_italics = 1
highlight Comment cterm=italic

au FileType ruby let b:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'",'"':'"', '`':'`', '|':'|', '/':'/'}
au FileType markdown let b:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'",'"':'"', '`':'`', '$':'$'}
au FileType scheme let b:AutoPairs = {'(':')', '"': '"', '[':']', '{':'}'}

let g:rainbow_active = 0

augroup scheme
	autocmd!

	autocmd FileType scheme setlocal ts=2 sts=2 sw=2 expandtab
augroup end

set backspace=indent,eol,start
set clipboard=unnamedplus

" Pandoc command
"command! Pandoc !pandoc "%" -o "%:r.pdf"
" if the pandoc plugin misbehaves
"let g:pandoc#command#latex_engine = "pdflatex"
let g:pandoc#command#use_message_buffers = 0

inoremap jk <esc>

nnoremap Q :close<enter>
nnoremap <space> W

let mapleader = ";"
nnoremap , ;

inoremap ;l λ
inoremap ;. ·

nnoremap <leader>d :ALEDetail<enter>
nnoremap <leader>n :ALENext<enter>zz
nnoremap <leader>N :ALEPrevious<enter>zz

nnoremap <leader>m :make<enter>
au FileType pandoc nnoremap <leader>m :Pandoc pdf<enter>

function! FindMake()
	let pos = search('make')
	if pos != 0
		execute "normal! Wv$hy"
		let &makeprg = @@
		nnoremap <leader>m :make<enter>
	endif
endfunction

nnoremap <leader>g :Git

nnoremap <leader>R :RainbowToggle<enter>

nnoremap <leader>o o<esc>k
nnoremap <leader>O O<esc>j

"tabs > spaces
augroup python
	autocmd!

	autocmd FileType python setlocal ts=4 sts=4 sw=4 noexpandtab
augroup end

let python_highlight_all = 1

command! Indent %s/    /\t/g

"SLIME integration
let g:slime_target = "tmux"
let g:slime_paste_file = "$HOME/.slime_paste"
let g:slime_default_config = {"socket_name": "default", "target_pane": "{right-of}"}

au FileType haskell nnoremap <buffer> <leader>f :HdevtoolsType<CR>
au FileType haskell nnoremap <buffer> <silent> <leader>t :HdevtoolsInfo<CR>
au FileType haskell nnoremap <buffer> <silent> <leader>c :HdevtoolsClear<CR>

set tabstop=4 "visual of a tab
set softtabstop=4 "mechanics of a tab
set noexpandtab
set relativenumber
set number "show line numbers
set number relativenumber

"setting line wrapping
set textwidth=0
set wrap
set linebreak

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
nnoremap <CR> :noh<CR>

let g:haskell_indent_disable = 1 "disbles haskellvim's auto indentation
let g:ycm_autoclose_preview_window_after_completion = 1
"let g:ycm_exclude_preview = 1
"let g:airline_exclude_preview = 1


let g:ale_linters = {'haskell': ['hdevtools', 'hlint'], 'python': ['pylint', 'mypy'], 'asm':[]}
let g:ale_fixers = {'haskell': ['hlint']}

let g:ale_echo_msg_format = "%linter%: %code: %%s"

" movement mappings
" move vertically by visual line
nnoremap j gj
nnoremap k gk
" visual movement
nnoremap $ g$
nnoremap 0 g0
" move through split panes with ctrl-<button>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <c-w>v :vsp <enter>
nnoremap <c-w>z :sp <enter>

autocmd! User GoyoEnter Limelight "Goyo integration
autocmd! User GoyoLeave Limelight!

let g:limelight_conceal_ctermfg = 'gray'

inoremap <C-l> <c-g>u<Esc>[s1z=`]<c-g>a
nnoremap == 1z=

let g:airline#extensions#whitespace#checks = ['indent', 'trailing', 'mixed-indent-file', 'conflicts']
let g:airline_powerline_fonts = 1
set guifont=Meslo_LG_S_for_Powerline:h11

let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors

syntax enable
