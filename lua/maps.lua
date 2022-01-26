local map = vim.api.nvim_set_keymap

map('n', '<Space>', '', {})
vim.g.mapleader = ' '

options = { noremap = true }
map('n', '<leader><esc>', ':nohlsearch<cr>', options)
map('n', '<leader><tab>n', ':bnext<cr>', options)
map('n', '<leader><tab>N', ':bprev<cr>', options)
map('n', '<leader>w', "<C-w>", options)
map('i', 'jk', '<esc>', options)
map('n', '<leader>qw', ':wq<cr>', options)
map('n', '<leader>qq', ':q!<cr>', options)
map('n', '<leader>h', ':help ', options)
map('n', '<leader><leader>', ':FZF<cr>', options)
map('n', '<leader>g', ':Git ', options)

map('n', 'j', 'gj', options)
map('n', 'k', 'gk', options)
map('v', 'j', 'gj', options)
map('v', 'k', 'gk', options)

map('n', '$', 'g$', options)
map('n', '0', 'g0', options)
map('v', 'j', 'gj', options)
map('v', 'j', 'gj', options)

vim.cmd("au FileType vim nnoremap <leader>c :source $<cr> <bar> :PaqInstall<cr>")
