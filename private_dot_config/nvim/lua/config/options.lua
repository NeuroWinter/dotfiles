-- Leader keys
vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- Editor basics
vim.opt.syntax = "on"
vim.opt.hidden = true
vim.opt.encoding = "utf-8"
vim.opt.fileencodings = "utf-8"
vim.opt.mouse = "a"
vim.opt.ruler = true
vim.opt.cmdheight = 1
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.conceallevel = 0

-- Tabs and indentation
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.smartindent = true
vim.opt.autoindent = true

-- UI stuff
vim.opt.wrap = false
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.laststatus = 2
vim.opt.showtabline = 2
vim.opt.background = "dark"
vim.opt.colorcolumn = "125"

-- Performance
vim.opt.updatetime = 300
vim.opt.timeoutlen = 1000

-- Format options
vim.opt.formatoptions = "cro"

-- Clipboard
vim.opt.clipboard = "unnamedplus"

-- Backup
vim.opt.backup = false
vim.opt.writebackup = false

-- disable arrow keys
vim.g.elite_mode = 1
