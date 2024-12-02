return {
  'navarasu/onedark.nvim',
  -- loads this plugin before others
  priority = 1000,
  name = 'onedark',

  config = function()
    require('onedark').setup {
      style = 'warmer',
      transparent = 'true',
      code_style = {
        comments = 'none',
      },
      highlights = {
        ['@markup.italic.markdown_inline'] = {
          italic = false,
          bold = true,
          fg = '#fc6d9a',
        },
        ['@markup.strong.markdown_inline'] = {
          italic = false,
          bold = true,
          fg = '#52a9a9',
        },
      },
    }
  end,

  init = function()
    vim.cmd.colorscheme 'onedark'
  end,
}
