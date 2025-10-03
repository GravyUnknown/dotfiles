return
{
  "navarasu/onedark.nvim",
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    require('onedark').setup {
      style = 'cool'
    }
    -- Enable theme
    require('onedark').load()
    -- Telescope customization
    local colors = -- One Dark Cool theme
    {
		black = "#151820",
		bg0 = "#242b38",
		bg1 = "#2d3343",
		bg2 = "#343e4f",
		bg3 = "#363c51",
		bg_d = "#1e242e",
		bg_blue = "#6db9f7",
		bg_yellow = "#f0d197",
		fg = "#a5b0c5",
		purple = "#ca72e4",
		green = "#97ca72",
		orange = "#d99a5e",
		blue = "#5ab0f6",
		yellow = "#ebc275",
		cyan = "#4dbdcb",
		red = "#ef5f6b",
		grey = "#546178",
		light_grey = "#7d899f",
		dark_cyan = "#25747d",
		dark_red = "#a13131",
		dark_yellow = "#9a6b16",
		dark_purple = "#8f36a9",
		diff_add = "#303d27",
		diff_delete = "#3c2729",
		diff_change = "#18344c",
		diff_text = "#265478",
	}

  local TelescopeConfig = 
  {
    TelescopePromptPrefix = {fg = colors.blue},
    TelescopeResultsNormal = {bg = colors.bg1},
    TelescopePromptBorder = {fg =  colors.fg, bg = colors.bg0},
    TelescopePreviewNormal = {bg = colors.bg_d},
    TelescopePromptBorder = {fg =  colors.blue, bg = colors.bg0},
    TelescopeResultsBorder = {fg =  colors.grey, bg = colors.bg1},
    TelescopePreviewBorder = {fg =  colors.yellow, bg = colors.bg_d},
    TelescopePromptTitle = {fg = colors.blue},
    TeleScopeResultsTitle = {fg = colors.grey},
    TelescopePreviewTitle = {fg = colors.yellow},


  }

  for hl, color in pairs(TelescopeConfig) do
    vim.api.nvim_set_hl(0, hl, color)
  end
  


  end

}
