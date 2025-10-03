return
{
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    vim.keymap.set('n', '<TAB>', ":BufferLineCycleNext<CR>")
    vim.keymap.set('n', '<S-TAB>', ":BufferLineCyclePrev<CR>")
    require('bufferline').setup({
      options = {
        themable = true,
        indicator = {
          style = 'underline'
        },
        separator_style = 'slant'
      }
    })
  end
}
