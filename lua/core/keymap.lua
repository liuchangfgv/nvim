vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i","qq","<ESC>")
keymap.set("n","<leader>l","<C-w>v")
keymap.set("n","<leader>k","<C-w>s")
keymap.set("n","<leader>a",":NvimTreeToggle<CR>",opt)
keymap.set("i","<C-/>","gcc")
keymap.set("n","<leader>g",":bnext<CR>")
keymap.set("n","<leader>f",":bprevious<CR>")
