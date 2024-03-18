return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  keys = {
    { '<leader>fe', '<cmd>Neotree toggle<cr>', desc = '[F]ile [E]xplorer' },
    { '<leader>ff', '<cmd>Neotree toggle reveal %:p:h<cr>', desc = '[F]ile [F]ind current buffer' },
  },
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },
}
