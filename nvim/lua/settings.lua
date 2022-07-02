-- Display
vim.o.showmatch = true			-- Show matching brackets
vim.o.scrolloff = 8			-- Amount of rows from edge of the screen
vim.o.laststatus = 2

-- Basic settings
vim.o.backspace = 'indent,eol,start'
vim.o.completeopt = 'menuone,noselect'
vim.o.startofline = true

-- Sidebar
vim.o.number = true
vim.o.relativenumber = true
vim.o.signcolumn = 'yes'
vim.o.modelines = 0
vim.o.showcmd = true

-- Search
vim.o.incsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.matchtime = 2
vim.o.mps = vim.o.mps .. ',<:>'

-- White characters
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

-- Backup files
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false
vim.o.undodir = false
vim.opt.colorcolumn = "80"
