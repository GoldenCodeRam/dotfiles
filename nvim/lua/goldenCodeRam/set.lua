-- Display
vim.o.showmatch = true			-- Show matching brackets
vim.o.scrolloff = 8			-- Amount of rows from edge of the screen
vim.o.laststatus = 2
vim.opt.nu = true

vim.opt.guicursor = ""

-- Basic settings
vim.o.backspace = 'indent,eol,start'
vim.o.completeopt = 'menuone,noselect'
vim.o.startofline = true

-- Sidebar
vim.o.number = true
vim.opt.relativenumber = true
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
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.smartindent = true

vim.opt.wrap = false

-- Backup files
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false
vim.o.undodir = false
vim.opt.colorcolumn = "80"

vim.g.mapleader = " "
