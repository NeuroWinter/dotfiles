return {
  -- Elixir syntax + Mix helpers
  { "elixir-lang/vim-elixir", ft = "elixir" },
  { "mattreduce/vim-mix", ft = "elixir" },
  { "slashmili/alchemist.vim", ft = "elixir" },

  -- Elixir LSP and dev tools
  {
    "elixir-tools/elixir-tools.nvim",
    version = "*",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local elixir = require("elixir")
      local elixirls = require("elixir.elixirls")
      local elixir_config = require("config.elixir")

      elixir.setup({
        nextls = { enable = false },
        elixirls = {
          enable = true,
          settings = elixirls.settings({
            dialyzerEnabled = false,
            enableTestLenses = false,
          }),
          on_attach = elixir_config.on_attach,
        },
        projectionist = { enable = true },
      })
    end,
  },
}
