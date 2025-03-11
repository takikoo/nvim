return {
  'folke/trouble.nvim',
  event = 'VimEnter',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  keys = {
    { '<leader>xx', '<cmd>Trouble<cr>', desc = 'Toggle trouble' },
    { '<leader>xw', '<cmd>Trouble workspace_diagnostics<cr>', desc = 'Trouble workspace diagnostics' },
    { '<leader>xd', '<cmd>Trouble document_diagnostics<cr>', desc = 'Trouble document diagnostics' },
    { '<leader>xq', '<cmd>Trouble quickfix<cr>', desc = 'Trouble quickfix' },
    { '<leader>xl', '<cmd>Trouble loclist<cr>', desc = 'Trouble loclist' },
    { 'gR', '<cmd>Trouble lsp_references<cr>', desc = 'Trouble lsp references' },
  },
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
}
