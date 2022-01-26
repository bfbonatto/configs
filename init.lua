require('settings')
require('maps')

require "paq" {
	"savq/paq-nvim";
	"neovim/nvim-lspconfig";
	"tpope/vim-surround";
	"scrooloose/nerdtree";
	"vim-airline/vim-airline";
	"vim-airline/vim-airline-themes";
	"nanotech/jellybeans.vim";
	"euclidianAce/BetterLua.vim";
	"rafcamlet/nvim-luapad";
	'jiangmiao/auto-pairs';
	'luochen1990/rainbow';
	'tpope/vim-fugitive';
	'junegunn/fzf';

}

vim.cmd("colorscheme jellybeans")

vim.g["airline#extensions#whitespace#checks"] = {'trailing', 'conflicts'}
vim.g["airline#extensions#nerdtree_status"] = 1
vim.g["airline#extensions#branch#enabled"] = 1
vim.g["airline#extensions#nerdtree_status"] = 1
vim.g["airline_powerline_fonts"] = 1
vim.g["airline#extensions#scrollbar#enabled"] = 0
vim.g["rainbow_active"] = 1
