vim.g.mapleader=" "

local keymap = vim.keymap

keymap.set("n", "<leader>vs", vim.cmd.vs)
keymap.set("n", "<leader>hs", vim.cmd.hs )
keymap.set("n", "<leader>bp", vim.cmd.bprevious )
keymap.set("n", "<leader>np", vim.cmd.bnext)

