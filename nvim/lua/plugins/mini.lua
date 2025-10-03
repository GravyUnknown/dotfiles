return 
{ 'nvim-mini/mini.nvim',
version = false,
config =  function()
  local m = 'plugins.mini-config.'
  require('mini.move').setup()
  require('mini.pairs').setup()
  require('mini.surround').setup()
  require('mini.ai').setup()

end}

