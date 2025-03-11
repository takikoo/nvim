return {
  'nvim-neorg/neorg',
  enabled = false,
  lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
  dependencies = { 'nvim-lua/plenary.nvim' },
  version = '*', -- Pin Neorg to the latest stable release
  config = true,
  -- ft = 'norg', -- lazy load on file type
  -- cmd = 'Neorg', -- lazy load on command
  -- config = function()
  --   require('neorg').setup {
  --     load = {
  --       ['core.defaults'] = {}, -- Loads default behaviour
  --       ['core.concealer'] = {}, -- Adds pretty icons to your documents
  --       ['core.dirman'] = { -- Manages Neorg workspaces
  --         config = {
  --           workspaces = {
  --             notes = '~/notes',
  --           },
  --         },
  --       },
  --     },
  --   }
  -- end,
}
