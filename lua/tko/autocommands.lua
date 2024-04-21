-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Add custom filetype '.keymap' and read it as a c file
-- vim.cmd 'autocmd BufNewFile,BufRead *.keymap set filetype=c'
vim.api.nvim_create_autocmd({'BufNewFile', 'BufRead'}, {
  desc = 'Add custom filetype ".keymap" and read it as a c file',
  group = vim.api.nvim_create_augroup('qmk-keymap-filetype', { clear = true }),
  pattern = '*.keymap',
  callback = function()
    vim.bo.filetype = 'c'
  end,
})
