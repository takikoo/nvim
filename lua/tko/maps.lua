local map = vim.keymap.set
map({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Diagnostic keymaps
map('n', '<leader>n', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
-- map('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
-- map('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
-- map('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
-- map('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

map({ 'i', 'n' }, '<esc>', '<cmd>noh<cr><esc>', { desc = 'Escape and clear hlsearch' })

-- Save file
map({ 'i', 'x', 'n', 's' }, '<C-s>', '<cmd>w<cr><esc>', { desc = 'Save file' })

--  Use CTRL+<hjkl> to switch between windows
map('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
map('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
map('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
map('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Buffer keymaps
map('n', '<leader>bd', '<cmd>bd<CR>', { desc = '[B]uffer [D]elete' })
map('n', '<leader>bn', '<cmd>bn<CR>', { desc = '[B]uffer [N]ext' })
map('n', '<leader>bp', '<cmd>bn<CR>', { desc = '[B]uffer [P]revious' })
map('n', '<leader>bb', '<cmd>e #<cr>', { desc = '[B]uffer Switch to other [B]uffer' })

-- lazy
map('n', '<leader>l', '<cmd>Lazy<cr>', { desc = 'Lazy' })

-- Git
map('n', '<leader>gg', '<cmd>LazyGit<cr>', { desc = '[G]it Lazy[G]it' })

-- new file
map('n', '<leader>fn', '<cmd>enew<cr>', { desc = '[F]ile [N]ew' })

-- quit
map('n', '<leader>qq', '<cmd>qa<cr>', { desc = 'Quit all' })

-- Set current buffers directory to cwd
map('n', '<leader>fw', '<cmd>lcd %:p:h<cr>', { desc = '[F]ile path to [C]urrent directory' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
