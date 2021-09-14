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

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'christoomey/vim-tmux-navigator'

Plug 'ryanoasis/vim-devicons'

Plug 'luochen1990/rainbow'

Plug 'godlygeek/tabular'

Plug 'octol/vim-cpp-enhanced-highlight'

Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'

Plug 'blindfs/vim-taskwarrior'

Plug 'tpope/vim-surround'

Plug 'easymotion/vim-easymotion'

Plug 'leafgarland/typescript-vim'

Plug 'tpope/vim-fugitive'

Plug 'dhruvasagar/vim-table-mode'

Plug 'reedes/vim-wordy'

Plug 'shirk/vim-gas'

Plug 'vim-python/python-syntax'

Plug 'jpalardy/vim-slime'

Plug 'xolox/vim-easytags'

Plug 'xolox/vim-misc'

Plug 'unblevable/quick-scope'

Plug 'vim-scripts/AnsiEsc.vim'

Plug 'majutsushi/tagbar'

Plug 'lervag/vimtex'

Plug 'ledger/vim-ledger'

Plug 'scrooloose/nerdcommenter'

Plug 'Julian/lean.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'neovim/nvim-lspconfig'

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
let maplocalleader = "'"

" nnoremap <leader>d :ALEDetail<enter>
" nnoremap <leader>n :ALENext<enter>zz
" nnoremap <leader>N :ALEPrevious<enter>zz
nnoremap <leader>g :Git 
nnoremap <leader>o o<esc>k
nnoremap <leader>O O<esc>j
vnoremap <leader>t :Tabularize/


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

" ---------------------
"  Completion sutff
"  --------------------

set hidden
set nobackup
set nowritebackup
" set cmdheight=2
set updatetime=300
set shortmess+=c
if has("nvim-0.5.0") || has("patch-8.1.1564")
  set signcolumn=number
else
  set signcolumn=yes
endif
nmap <silent> <leader>N <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>n <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gt <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Applying codeAction to the selected region.
xmap <leader>a  <Plug>(coc-codeaction-cursor)
nmap <leader>a  <Plug>(coc-codeaction-cursor)



" Remap <C-f> and <C-s> for scroll float windows/popups.
" nnoremap <silent><nowait><expr> <c-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<c-f>"
" nnoremap <silent><nowait><expr> <c-s> coc#float#has_scroll() ? coc#float#scroll(0) : "\<c-b>"
" inoremap <silent><nowait><expr> <c-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
" inoremap <silent><nowait><expr> <c-s> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
" vnoremap <silent><nowait><expr> <c-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<c-f>"
" vnoremap <silent><nowait><expr> <c-s> coc#float#has_scroll() ? coc#float#scroll(0) : "\<c-b>"

inoremap <silent><nowait><expr> <c-f> coc#float#scroll(1)
inoremap <silent><nowait><expr> <c-s> coc#float#scroll(0)

"complete on <tab>
" inoremap <silent><expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
" inoremap <silent><expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


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


" augroup coq
"     autocmd!
"     autocmd FileType coq call coquille#Commands()
"     autocmd FileType coq nnoremap <c-j> :CoqNext<enter>
"     autocmd FileType coq nnoremap <c-k> :CoqUndo<enter>
"     autocmd FileType coq inoremap <c-j> <esc>:CoqNext<enter>a
" augroup end


augroup make
	autocmd!
	au FileType pandoc nnoremap <leader>m :Pandoc pdf --citeproc<enter>
	au FileType vim nnoremap <leader>m :source %<enter> <bar> :PlugInstall<enter>
augroup end

let g:table_mode_corner='+'
let g:table_mode_corner_corner='+'
let g:table_mode_header_fillchar='='

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
augroup tabs
	autocmd!
	autocmd FileType python setlocal ts=4 sts=4 sw=4 noexpandtab
	autocmd FileType rust setlocal ts=4 sts=4 sw=4 noexpandtab
	autocmd FileType ruby setlocal ts=2 sts=2 sw=2 expandtab
augroup end

let g:python_highlight_indent_errors = 0
let g:python_highlight_all = 1
let g:python3_host_prog = '/Users/bfbonatto/.pyenv/shims/python'

command! Indent %s/    /\t/g

"SLIME integration
let g:slime_target = "tmux"
let g:slime_paste_file = "$HOME/.slime_paste"
let g:slime_default_config = {"socket_name": "default", "target_pane": "{right-of}"}


"better highlighting
let g:cpp_class_scope_highlight = 1
let g:cpp_class_decl_highlight = 1


let g:haskell_indent_disable = 1 "disbles haskellvim's auto indentation

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
let g:airline#extensions#scrollbar#enabled = 0
set guifont=DejaVuSansMono_Nerd_Font_Mono:h11

" TaskWarrior
let g:task_default_prompt = ['due', 'recur', 'project', 'priority', 'description', 'depends', 'tag']

let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors

syntax enable

function LeanSetup()
lua << Lean
	local lean = require('lean')
	lean.setup({lsp = { on_attach = on_attach }, lsp3 = { on_attach = on_attach }, mappings = true, abbreviations = {builtin = true, }, infoview = {autoopen = false, width = 50,},})
Lean
	e %
endfunction

autocmd FileType lean call LeanSetup()
autocmd FileType lean3 call LeanSetup()
