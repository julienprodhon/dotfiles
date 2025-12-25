-- Set leader keys FIRST (before lazy.nvim loads)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Your other vim options
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 2

vim.opt.clipboard = "unnamedplus"

-- Window navigation keymaps
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to bottom window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to top window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })
