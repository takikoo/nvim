return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'

    -- REQUIRED
    harpoon:setup {}
    -- REQUIRED

    -- basic telescope configuration
    local conf = require('telescope.config').values
    local function toggle_telescope(harpoon_files)
      local file_paths = {}
      for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
      end

      require('telescope.pickers')
        .new({}, {
          prompt_title = 'Harpoon',
          finder = require('telescope.finders').new_table {
            results = file_paths,
          },
          previewer = conf.file_previewer {},
          sorter = conf.generic_sorter {},
        })
        :find()
    end

    vim.keymap.set('n', '<leader>a', function()
      harpoon:list():append()
    end, { desc = 'Append current buffer to harpoon list' })
    vim.keymap.set('n', '<C-e>', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = 'Open harpoon window' })

    vim.keymap.set('n', '<leader>sp', function()
      toggle_telescope(harpoon:list())
    end, { desc = '[S]earch har[p]oon window' })

    vim.keymap.set('n', '<M-j>', function()
      harpoon:list():select(1)
    end, { desc = 'Jump to harpoon list item 1' })

    vim.keymap.set('n', '<M-k>', function()
      harpoon:list():select(2)
    end, { desc = 'Jump to harpoon list item 2' })

    vim.keymap.set('n', '<M-l>', function()
      harpoon:list():select(3)
    end, { desc = 'Jump to harpoon list item 3' })

    vim.keymap.set('n', '<M-ö>', function()
      harpoon:list():select(4)
    end, { desc = 'Jump to harpoon list item 4' })

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set('n', '<A-p>', function()
      harpoon:list():prev()
    end, { desc = 'Jump to previous harpoon list item' })
    vim.keymap.set('n', '<A-n>', function()
      harpoon:list():next()
    end, { desc = 'Jump to next harpoon list item' })
  end,
}
