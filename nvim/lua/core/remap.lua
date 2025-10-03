vim.g.mapleader = " "
local keymap = vim.keymap.set


keymap("n", "<leader>vs", vim.cmd.vs)
keymap("n", "<leader>hs", vim.cmd.hs)
keymap("n", "<leader>bp", vim.cmd.bprevious)
keymap("n", "<leader>np", vim.cmd.bnext)
keymap("n", "<C-d>", "<C-d>zz")
keymap("n", "<C-u>", "<C-u>zz")
keymap("n", "n", "nzzzv")
keymap("n", "N", "Nzzzv")
keymap({ "n", "v" }, "<leader>y", [["+y]])
keymap("n", "<leader>Y", [["+Y]])
keymap("n", "<leader>l", ":Lazy<CR>")
keymap("n", "<C-k>", "<C-w>k")
keymap("n", "<C-j>", "<C-w>j")
keymap("n", "<C-h>", "<C-w>h")
keymap("n", "<C-l>", "<C-w>l")
keymap("n", "<leader>bd", ":bd<CR>")
