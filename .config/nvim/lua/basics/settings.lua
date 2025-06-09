-- fix tabs
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

-- relative line numbers on
vim.opt.number = true
vim.opt.relativenumber = true

-- mouse on
vim.opt.mouse = 'a'

-- hide status (already in status bar)
vim.opt.showmode = false

-- only one clipboard
vim.opt.clipboard = 'unnamedplus'

-- break indent (?)
vim.opt.breakindent = true

-- undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300

-- don't really use but configures how to open split windows
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 5

-- disable nerd font
vim.g.have_nerd_font = false

-- disable markdown?
vim.g.markdown_recommended_style = 0

-- disable horizontal scrolling
vim.opt.mousescroll = 'ver:1,hor:0'

-- make latex always latex
vim.g.tex_flavor = 'latex'


-- automatically focus ghostty after inverse serach on skim pdf reader
local function TexFocusVim()
  vim.cmd('silent !open -a Ghostty')
  vim.cmd('redraw!')
end

local vimtex_focus_group = vim.api.nvim_create_augroup("vimtex_event_focus", { clear = true })

vim.api.nvim_create_autocmd("User", {
  pattern = "VimtexEventViewReverse",
  group = vimtex_focus_group,
  desc = "Focus Ghostty terminal on VimTeX reverse view sync",
  callback = TexFocusVim,
})
