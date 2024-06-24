-- NOTE: the following were from kickstart

-- leader to space
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '


-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Use CTRL+<hjkl> to switch between windows
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })





-- NOTE: these were not from kickstart

-- open file explorer with pv
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.opt.guicursor = 'n-v-i-c:block-Cursor'

vim.keymap.set('n', '<ScrollWheelUp>', '<C-Y>')
vim.keymap.set('n', '<ScrollWheelDown>', '<C-E>')

vim.keymap.set('i', '<Esc><BS>', '<C-w>')

vim.keymap.set('i', '<C-T>', '<Esc>')

-- navigate words in insert mode easily
vim.keymap.set('i', '<C-k>', '<C-left>')
vim.keymap.set('i', '<C-l>', '<C-right>')

-- disable wrapping
vim.wo.wrap = false

-- disable auto comment
vim.cmd([[autocmd FileType * set formatoptions-=ro]])

-- shift tab to go back tab
vim.keymap.set('i', '<S-Tab>', '<C-d>')

-- set column at 80 chars (disabled)
-- vim.opt.colorcolumn = "80"

vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2

-- disable d cutting in visual mode, just deletes
-- use x to cut
vim.keymap.set('v', 'd', '"_d')

-- move selected lines up and down in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
