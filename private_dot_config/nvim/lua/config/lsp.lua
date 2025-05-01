local lspconfig = require("lspconfig")

-- Global on_attach for all servers
local on_attach = function(client, bufnr)
  local opts = { buffer = bufnr }
  local map = vim.keymap.set
  local wk = require("which-key")

  map('n', 'gD', vim.lsp.buf.declaration, opts)
  map('n', 'gd', vim.lsp.buf.definition, opts)
  map('n', 'K', vim.lsp.buf.hover, opts)
  map('n', 'gi', vim.lsp.buf.implementation, opts)
  map('n', '<C-k>', vim.lsp.buf.signature_help, opts)
  map('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
  map('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
  map('n', '<space>wl', function() print(vim.inspect(vim.lsp.buf.list_workspace_folders())) end, opts)
  map('n', '<space>D', vim.lsp.buf.type_definition, opts)
  map('n', '<space>rn', vim.lsp.buf.rename, opts)
  map({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
  map('n', 'gr', vim.lsp.buf.references, opts)
  map('n', '<space>f', function() vim.lsp.buf.format { async = true } end, opts)

    wk.add({
    { "gD", vim.lsp.buf.declaration, desc = "Go to Declaration" },
    { "gd", vim.lsp.buf.definition, desc = "Go to Definition" },
    { "gr", vim.lsp.buf.references, desc = "Go to References" },
    { "gi", vim.lsp.buf.implementation, desc = "Go to Implementation" },
    { "K",  vim.lsp.buf.hover, desc = "Hover Documentation" },
    { "<C-k>", vim.lsp.buf.signature_help, desc = "Signature Help" },
    { "<space>wa", vim.lsp.buf.add_workspace_folder, desc = "Add Workspace Folder" },
    { "<space>wr", vim.lsp.buf.remove_workspace_folder, desc = "Remove Workspace Folder" },
    { "<space>wl", function() print(vim.inspect(vim.lsp.buf.list_workspace_folders())) end, desc = "List Workspace Folders" },
    { "<space>D", vim.lsp.buf.type_definition, desc = "Type Definition" },
    { "<space>rn", vim.lsp.buf.rename, desc = "Rename Symbol" },
    { "<space>ca", vim.lsp.buf.code_action, desc = "Code Action" },
    { "<space>f", function() vim.lsp.buf.format { async = true } end, desc = "Format Buffer" },

    -- optional: group label
    { "<leader>l", group = "LSP" },
  }, { buffer = bufnr })
end

-- Setup each server
lspconfig.lua_ls.setup { on_attach = on_attach }
lspconfig.pyright.setup { on_attach = on_attach }
lspconfig.terraformls.setup { on_attach = on_attach }
lspconfig.tflint.setup { on_attach = on_attach }
-- lspconfig.elixirls.setup { on_attach = on_attach }

-- You could also add capabilities here if you're using nvim-cmp

