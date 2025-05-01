local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Diagnostic keymaps
map("n", "<leader>e", vim.diagnostic.open_float, opts)
map("n", "[d", vim.diagnostic.goto_prev, opts)
map("n", "]d", vim.diagnostic.goto_next, opts)
map("n", "<space>q", vim.diagnostic.setloclist, opts)

-- Terminal mode escape
map("t", "<Esc>", [[<C-\><C-n>]], opts)

-- Snacks keymaps
map("n", "<leader>n", function() require("snacks").explorer() end, { desc = "File explorer" })
map("n", "<leader>ff", function() require("snacks").picker.smart() end, { desc = "File picker" })
map("n", "<leader>b", function() require("snacks").picker.buffers() end, { desc = "Buffers" })
map("n", "<leader>g", function() require("snacks").picker.grep() end, { desc = "Grep" })

-- help tags (fallback to telescope)
local ok, builtin = pcall(require, "telescope.builtin")
if ok then
  map("n", "<leader>fh", builtin.help_tags, opts)
end

-- which-key grouping and descriptions

local wk_ok, wk = pcall(require, "which-key")
if wk_ok then
  wk.add({
    { "<leader>b", function() require("snacks").picker.buffers() end, desc = "Snacks Buffers" },
    { "<leader>ff", function() require("snacks").picker.smart() end, desc = "Snacks File Picker" },
    { "<leader>fh", function() local ok, builtin = pcall(require, "telescope.builtin") if ok then builtin.help_tags() end end, desc = "Help Tags (Telescope)" },
    { "<leader>g", function() require("snacks").picker.grep() end, desc = "Snacks Grep" },
    { "<leader>n", function() require("snacks").explorer() end, desc = "Snacks File Explorer" },
    { "<leader>t", function() require("snacks").terminal.toggle() end, desc = "Snacks Terminal Toggle" },

    -- diagnostics
    { "<leader>e", vim.diagnostic.open_float, desc = "Show Diagnostics" },
    { "<space>q", vim.diagnostic.setloclist, desc = "Diagnostics Loclist" },
    { "[d", vim.diagnostic.goto_prev, desc = "Prev Diagnostic" },
    { "]d", vim.diagnostic.goto_next, desc = "Next Diagnostic" },

    -- LSP jazz is defined in the config/lsp.lua file.

    -- group labels (flat spec style)
    { "<leader>f", group = "file" },
    { "<leader>b", group = "buffers" },
    { "<leader>g", group = "grep" },
    { "<leader>d", group = "diagnostics" },
  })
end



