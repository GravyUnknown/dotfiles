vim.g.mapleader=" "

local keymap = vim.keymap

keymap.set("n", "<leader>vs", vim.cmd.vs)
keymap.set("n", "<leader>hs", vim.cmd.hs )
keymap.set("n", "<leader>bp", vim.cmd.bprevious )
keymap.set("n", "<leader>np", vim.cmd.bnext)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

--ripped from the primeagen
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])




