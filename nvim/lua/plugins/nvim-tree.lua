return {
"nvim-tree/nvim-tree.lua",
dependencies = {'nvim-tree/nvim-web-devicons'},
config=function()
    vim.keymap.set("n", "<leader>nt", ":NvimTreeToggle<CR>")
    require "nvim-tree".setup()
end
}
