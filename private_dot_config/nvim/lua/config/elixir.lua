local M = {}

function M.on_attach(client, bufnr)
  local map = vim.keymap.set
  local opts = { buffer = bufnr, noremap = true }

  map("n", "<space>fp", ":ElixirFromPipe<CR>", opts)
  map("n", "<space>tp", ":ElixirToPipe<CR>", opts)
  map("v", "<space>em", ":ElixirExpandMacro<CR>", opts)

  -- Optional: LSP keymaps if not handled globally
  map("n", "gd", vim.lsp.buf.definition, opts)
  map("n", "K", vim.lsp.buf.hover, opts)
  map("n", "<space>rn", vim.lsp.buf.rename, opts)
  map("n", "<space>f", function()
    vim.lsp.buf.format { async = true }
  end, opts)
end

return M
