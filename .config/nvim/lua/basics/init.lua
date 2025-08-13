require('basics/remaps')
require('basics/settings')
require('basics/lazy_init')
require('basics/markdown')
require('basics/latex')
require('basics/refile')


-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- local tex_settings_group = vim.api.nvim_create_augroup("TexSettings", { clear = true })
--
-- vim.api.nvim_create_autocmd("FileType", {
--   group = tex_settings_group,
--   pattern = "tex",
--   desc = "Set textwidth for LaTeX files",
--   callback = function()
--     vim.opt_local.textwidth = 81
--   end,
-- })
--
-- end file
