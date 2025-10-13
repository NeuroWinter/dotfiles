-- Here we are gonna make sure that we are using a python venv that has nvim in it:
-- python3 -m venv ~/.venvs/nvim
-- ~/.venvs/nvim/bin/python -m pip install -U pip pynvim
vim.g.python3_host_prog = vim.fn.expand("~/.venvs/nvim/bin/python3")

-- Plugin bootstrap and Lazy.nvim plugin specs
require("plugins")  -- loads from lua/plugins/init.lua

-- Core configuration (load early)
require("config.options")     -- sets mapleader and basic settings
require("config.keymaps")     -- relies on leader key being set

-- UI
require("config.theme")

-- Plugin configurations
require("config.lsp")
require("config.formatter")
require("config.lint")
require("config.nvim-cmp")
require("config.lualine")
