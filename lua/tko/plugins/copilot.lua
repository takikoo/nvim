return {
  {
    'zbirenbaum/copilot.lua',
    cmd = 'Copilot',
    event = 'InsertEnter',
    opts = {
      suggestion = { enabled = false },
      panel = { enabled = false },
    },
    config = true,
  },
  {
    'zbirenbaum/copilot-cmp',
    config = true,
  },
}
