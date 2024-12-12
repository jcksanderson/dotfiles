return {
  'OXY2DEV/markview.nvim',
  lazy = false, -- Recommended
  -- ft = "markdown" -- If you decide to lazy-load anyway

  dependencies = {
    -- You will not need this if you installed the
    -- parsers manually
    -- Or if the parsers are in your $RUNTIMEPATH
    'nvim-treesitter/nvim-treesitter',

    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('markview').setup {
      code_blocks = {
        icons = '',
        style = 'minimal',
        hl = 'MarkviewCode',
      },
      headings = {
        enable = true,
        shift_width = 0,
        heading_1 = {
          style = 'simple',
        },
        heading_2 = {
          style = 'simple',
        },
        heading_3 = {
          style = 'simple',
        },
        heading_4 = { style = 'simple' },
        heading_5 = { style = 'simple' },
        heading_6 = { style = 'simple' },
      },
      list_items = {
        enable = false,
      },
      inline_codes = {
        enable = false,
      },
    }
  end,
}
