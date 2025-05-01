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
