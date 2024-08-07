return {
  {
    'folke/which-key.nvim',
    event = 'VeryLazy',
    config = function()
      local wk = require 'which-key'
      wk.setup()
      wk.add {
        { '<leader>c', group = '[C]ode' },
        { '<leader>b', group = '[B]uffer' },
        { '<leader>d', group = '[D]ocument' },
        { '<leader>f', group = '[F]ile' },
        { '<leader>g', group = '[G]it' },
        { '<leader>gh', group = '[H]unk' },
        { '<leader>r', group = '[R]ename' },
        { '<leader>s', group = '[S]earch' },
        { '<leader>x', group = '[X]Diagnostics' },
        { '<leader>q', group = '[Q]uit' },
        { '<leader>t', group = 'Personal maps' },
        { '<leader>w', group = '[W]orkspace' },
      }
    end,
  },
}
