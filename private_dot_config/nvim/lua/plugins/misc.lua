return {
  -- Nerd Commenter for quick comment toggling
  { "scrooloose/nerdcommenter" },

  -- GitHub Copilot core plugin
  {
    "zbirenbaum/copilot.lua",
    event = "VimEnter",
    cmd = "Copilot",
    config = function()
      require("copilot").setup({})
    end
  },

  -- Optional: better notifications, if you want it
  {
    "rcarriga/nvim-notify",
    config = function()
      vim.notify = require("notify")
    end,
  },

  -- Which key, so when I press leader it will show me what options I have for the next key
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    config = function()
      require("which-key").setup({})
    end,
  }
}
