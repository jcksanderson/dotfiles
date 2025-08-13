-- NOTE: the following were from kickstart

vim.keymap.set({ 'n', 'v' }, ';', ':')
vim.keymap.set({ 'n', 'v' }, ':', ';')

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

-- NOTE: these were not from kickstart

-- open file explorer with pv
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

vim.opt.guicursor = 'n-v-i-c:block-Cursor'

vim.keymap.set('n', '<ScrollWheelUp>', '<C-Y>')
vim.keymap.set('n', '<ScrollWheelDown>', '<C-E>')

-- for option + backspace to delete word
vim.keymap.set('i', '<M-BS>', '<C-w>')
vim.keymap.set('c', '<M-BS>', '<C-w>')

vim.keymap.set('i', '<C-T>', '<Esc>')

-- navigate words in insert mode easily
vim.keymap.set('i', '<C-a>', '<C-left>')
vim.keymap.set('i', '<C-f>', '<C-right>')

-- disable wrapping
vim.wo.wrap = false

-- disable auto comment
vim.cmd [[autocmd FileType * set formatoptions-=ro]]

-- shift tab to go back tab
vim.keymap.set('i', '<S-Tab>', '<C-d>')
-- vim.keymap.set('i', '<S-Tab>', '<Esc><<hi', { noremap = true, silent = true })

vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2

-- disable d cutting, just deletes
-- use x to cut
vim.keymap.set({ 'v', 'n' }, 'd', '"_d')
vim.keymap.set({ 'v' }, 'D', '"_d')

-- move selected lines up and down in visual mode
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- repeated tab/untab in visual mode
vim.keymap.set('v', '<Tab>', '>gv', { noremap = true, silent = true })
vim.keymap.set('v', '<S-Tab>', '<gv', { noremap = true, silent = true })

-- center cursor in screen in insert mode
vim.keymap.set('i', '<C-x>', '<Esc>zza')

-- HACK: LuaSnip and VimTeX keybindings

-- Yes, we're just executing a bunch of Vimscript, but this is the officially
-- endorsed method; see https://github.com/L3MON4D3/LuaSnip#keymaps
vim.cmd [[
" Use Tab to expand and jump through snippets
imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>'
smap <silent><expr> <Tab> luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : '<Tab>'
]]
--
-- " Use Shift-Tab to jump backwards through snippets
-- imap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
-- smap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
-- ]]
