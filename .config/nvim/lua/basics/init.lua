require('basics/remaps')
require('basics/settings')
require('basics/lazy_init')

-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

local tex_settings_group = vim.api.nvim_create_augroup("TexSettings", { clear = true })
local markdown_settings_group = vim.api.nvim_create_augroup("MDSettings", { clear = true })

vim.api.nvim_create_autocmd("FileType", {
  group = tex_settings_group,
  pattern = "tex",
  desc = "Set textwidth for LaTeX files",
  callback = function()
    vim.opt_local.textwidth = 81
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  group = markdown_settings_group,
  pattern = "markdown",
  desc = "Set textwidth for MD files",
  callback = function()
    vim.opt_local.textwidth = 80
  end,
})

vim.api.nvim_create_autocmd('BufReadPost', {
  pattern = '*.md',
  command = 'NoNeckPain',
})


-- fix markdown formatting
-- vim.api.nvim_create_autocmd('FileType', {
--   pattern = 'markdown',
--   callback = function()
--     print 'command run'
--     vim.opt_local.shiftwidth = 0
--     vim.opt_local.softtabstop = 2
--     vim.opt_local.tabstop = 2
--   end,
-- })

-- require('onedark').setup {
--   -- Main options --
--   style = 'darker',   -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
--   transparent = true, -- Show/hide background
-- }
--
-- require('onedark').load()
