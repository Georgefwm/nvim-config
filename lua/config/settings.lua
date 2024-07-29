-- Default tab width
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Enable mouse mode, can be useful for resizing splits
-- Slightly cursed having this on though...
vim.opt.mouse = "a"

-- Show current mode
vim.opt.showmode = true

-- Sync clipboard between OS and Neovim
vim.opt.clipboard = "unnamedplus"

-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Decrease update time
vim.opt.updatetime = 750

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 500

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor
-- This shit is so cursed, yuck!
vim.opt.list = false
--     listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions while typing
vim.opt.inccommand = "split"

-- Show which line your cursor is on
-- Might be good, just seems annoying
vim.opt.cursorline = false

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true

-- Hide the tilda things on the left
vim.opt.fillchars = { eob = " " }

-- misc
vim.opt.nu = true
vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.colorcolumn = "100"
vim.opt.virtualedit = "onemore"
vim.opt.guicursor = ""
