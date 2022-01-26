
local options = vim.o
local global_options = vim.go
local window_options = vim.wo
local buffer_options = vim.bo

options.smartcase = true
options.hlsearch = true
options.incsearch = true

window_options.relativenumber = true
window_options.number = true

options.tabstop = 4
options.softtabstop =4
vim.cmd("set noexpandtab")
options.textwidth = 0
options.wrap = true
options.linebreak = true
options.shiftwidth = 4
options.autoindent = true
options.smartindent = true
vim.cmd("set backspace=indent,eol,start")
vim.cmd("set clipboard=unnamedplus")
