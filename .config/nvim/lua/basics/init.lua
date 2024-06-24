require 'basics/remaps'
require 'basics/settings'
require 'basics/lazy_init'

-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- require('onedark').setup {
--   -- Main options --
--   style = 'darker',   -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
--   transparent = true, -- Show/hide background
-- }
--
-- require('onedark').load()

-- require('virt-column').setup {
--   virtcolumn = '80',
-- }
