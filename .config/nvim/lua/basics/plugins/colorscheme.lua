return {
  'navarasu/onedark.nvim',
  -- loads this plugin before others
  priority = 1000,
  name = 'onedark',

  config = function()
    require('onedark').setup {
      style = 'warmer',
      transparent = 'true',
    }
  end,

  init = function()
    vim.cmd.colorscheme 'onedark'
  end,
}
