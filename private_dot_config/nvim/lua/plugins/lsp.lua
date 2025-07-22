return {
  -- Mason: Manages external tools
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },

  -- Bridges Mason and LSPConfig
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls", "pyright", "terraformls", "tflint", "elixirls"
        },
      })
    end
  },

  -- Actual LSP client config
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("config.lsp") -- this is where you'll define `on_attach`, capabilities, etc.
    end
  },

  -- Fancy LSP UI
  {
    "nvimdev/lspsaga.nvim",
    config = function()
      require("lspsaga").setup({})
    end
  },
}

