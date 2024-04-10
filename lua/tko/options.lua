local opt = vim.opt

-- Set default tab width to 2 spaces
opt.expandtab = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2

-- Preview substitutions live, as you type!
opt.inccommand = 'split'

-- Show which line your cursor is on
opt.cursorline = true

-- Make line numbers, relative line numbers, and word wrap default
opt.number = true
opt.relativenumber = true
opt.wrap = false

-- Minimal number of screen lines to keep above and below the cursor.
opt.scrolloff = 10

-- Don't show the mode, since it's already in status line
opt.showmode = false

-- Configure how new splits should be opened
opt.splitright = true
opt.splitbelow = true

-- Sets how neovim will display certain whitespace in the editor.
opt.list = true
opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Set highlight on search
opt.hlsearch = true
opt.incsearch = true

-- Enable break indent
opt.breakindent = true

-- Save undo history
opt.undofile = true

-- Case insensitive searching UNLESS /C or capital in search
opt.ignorecase = true
opt.smartcase = true

-- Keep signcolumn on by default
opt.signcolumn = 'yes'

-- Decrease update time
opt.updatetime = 250
opt.timeoutlen = 300
opt.timeout = true

-- Set completeopt to have a better completion experience
opt.completeopt = 'menuone,noselect'

-- NOTE: You should make sure your terminal supports this
opt.termguicolors = true

opt.visualbell = true
