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

Plug 'vim-python/python-syntax'

Plug 'jpalardy/vim-slime'

Plug 'xolox/vim-easytags'

Plug 'xolox/vim-misc'

Plug 'wlangstroth/vim-racket'

Plug 'vimwiki/vimwiki'

Plug 'unblevable/quick-scope'

"Plug 'valloric/youcompleteme'
Plug 'shougo/deoplete.nvim'

Plug 'itchyny/calendar.vim'

Plug 'vim-scripts/AnsiEsc.vim'

Plug 'majutsushi/tagbar'

Plug 'lervag/vimtex'

Plug 'ledger/vim-ledger'

Plug 'scrooloose/nerdcommenter'

Plug 'shirk/vim-gas'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

filetype plugin indent on	" required

" ----------------------------------
"				Visuals
" ----------------------------------

colorscheme jellybeans "color theme

" italized comments
let g:jellybeans_use_term_italics = 1
highlight Comment cterm=italic

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

" ----------------------------------
" ----------------------------------


" ----------------------------------
"		Basic Functionality
" ----------------------------------

set backspace=indent,eol,start	"backspace deletes from preceding line
set clipboard=unnamedplus		"clipboard from-to outside vim

inoremap jk <esc>
inoremap kj <esc>

inoremap <C-j> <esc>o

nnoremap Q :close<enter>

let mapleader = ";"
nnoremap , ;

nnoremap <leader>d :ALEDetail<enter>
nnoremap <leader>n :ALENext<enter>zz
nnoremap <leader>N :ALEPrevious<enter>zz
nnoremap <leader>g :Git 
nnoremap <leader>o o<esc>k
nnoremap <leader>O O<esc>j
vnoremap <leader>t :Tabularize/

"complete on <tab>
inoremap <silent><expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <silent><expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"


"search highlighting
set hlsearch
set incsearch
nnoremap <CR> :noh<CR>
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

" movement mappings
" move vertically by visual line
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
" visual movement
nnoremap $ g$
nnoremap 0 g0
nnoremap J j
nnoremap K k
vnoremap $ g$
vnoremap 0 g0
vnoremap J j
vnoremap K k
" move through split panes with ctrl-<button>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <c-w>v :vsp <enter>
nnoremap <c-w>z :sp <enter>

" spell checking
" C-l replaces last misspelled word with the fist suggestion
inoremap <C-l> <c-g>u<Esc>[s1z=`]<c-g>a
" replaces word under cursor with first suggestion
nnoremap == 1z=
" ----------------------------------
" ----------------------------------

au FileType ruby let b:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'",'"':'"', '`':'`', '|':'|', '/':'/'}
au FileType markdown let b:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'",'"':'"', '`':'`', '$':'$'}
au FileType scheme let b:AutoPairs = {'(':')', '"': '"', '[':']', '{':'}'}

" Create default mappings
let g:NERDCreateDefaultMappings = 1
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1

let g:deoplete#enable_at_startup = 1

nnoremap <leader>R :RainbowToggle<enter>
let g:rainbow_active = 0

augroup scheme
	autocmd!
	autocmd FileType scheme setlocal ts=2 sts=2 sw=2 expandtab
augroup end


" Pandoc command
"command! Pandoc !pandoc "%" -o "%:r.pdf"
" if the pandoc plugin misbehaves
"let g:pandoc#command#latex_engine = "pdflatex"
let g:pandoc#command#use_message_buffers = 0

inoremap \la λ
inoremap \. ·


augroup coq
	autocmd!
	autocmd FileType coq call coquille#Commands()
	autocmd FileType coq nnoremap <c-j> :CoqNext<enter>
	autocmd FileType coq nnoremap <c-k> :CoqUndo<enter>
	autocmd FileType coq inoremap <c-j> <esc>:CoqNext<enter>a
augroup end


augroup make
	autocmd!
	au FileType pandoc nnoremap <leader>m :Pandoc pdf<enter>
	au FileType vim nnoremap <leader>m :source %<enter> <bar> :PlugInstall<enter>
augroup end

augroup tex
	autocmd!
	au FileType tex nnoremap <leader>li :VimtexInfo<enter>
	au FileType tex nnoremap <leader>lt :VimtexTocToggle<enter>
	au FileType tex nnoremap <leader>lv :VimtexView<enter>
	au FileType tex nnoremap <leader>ll :VimtexCompile<enter>
	au FileType tex nnoremap <leader>lk :VimtexStop<enter>
	au FileType tex nnoremap <leader>lc :VimtexClean<enter>
	au FileType tex nnoremap <leader>lx :VimtexReload<ente>
augroup end


"tabs > spaces
augroup python
	autocmd!
	autocmd FileType python setlocal ts=4 sts=4 sw=4 noexpandtab
augroup end
" let g:pymode_options = 0
" let g:pymode_options_colorclumn = 0


let python_highlight_all = 1
let g:python3_host_prog = '/Users/bfbonatto/.pyenv/shims/python'

command! Indent %s/    /\t/g

"SLIME integration
let g:slime_target = "tmux"
let g:slime_paste_file = "$HOME/.slime_paste"
let g:slime_default_config = {"socket_name": "default", "target_pane": "{right-of}"}

augroup haskell
	autocmd!
	au FileType haskell nnoremap <buffer> <leader>f :HdevtoolsType<CR>
	au FileType haskell nnoremap <buffer> <silent> <leader>t :HdevtoolsInfo<CR>
	au FileType haskell nnoremap <buffer> <silent> <leader>c :HdevtoolsClear<CR>
augroup end

let g:hdevtools_stack = 1


"better highlighting
let g:cpp_class_scope_highlight = 1
let g:cpp_class_decl_highlight = 1


let g:haskell_indent_disable = 1 "disbles haskellvim's auto indentation
let g:ycm_autoclose_preview_window_after_completion = 1
"let g:ycm_exclude_preview = 1
"let g:airline_exclude_preview = 1


let g:ale_linters = {'haskell': ['hdevtools', 'hlint'], 'python': ['pylint', 'mypy'], 'asm':[]}
let g:ale_fixers = {'haskell': ['hlint']}

let g:ale_echo_msg_format = "%linter%: %code: %%s"


autocmd! User GoyoEnter Limelight "Goyo integration
autocmd! User GoyoLeave Limelight!

let g:limelight_conceal_ctermfg = 'gray'

let g:airline#extensions#whitespace#checks = ['trailing', 'conflicts']
let g:airline#extensions#nerdtree_status = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#nerdtree_status = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#vimtex#enabled = 1
let g:airline#extensions#ycm#enabled = 1
let g:airline_powerline_fonts = 1
set guifont=DejaVuSansMono_Nerd_Font_Mono:h11

" TaskWarrior
let g:task_default_prompt = ['due', 'recur', 'project', 'priority', 'description', 'depends', 'tag']

let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors

syntax enable
