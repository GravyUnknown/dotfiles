return {
    'akinsho/bufferline.nvim',
    version="*",
    dependencies={'nvim-tree/nvim-web-devicons'},
    config=function()
        require "bufferline".setup{
        options={
            indicator = {
                style = 'underline'
            },
            separator_style="slant"
        }}
        vim.keymap.set("n", "<TAB>", ":BufferLineCycleNext<CR>")
        vim.keymap.set("n", "<S-TAB>", ":BufferLineCyclePrevious<CR>")

    end
}
