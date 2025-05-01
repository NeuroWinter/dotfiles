return {
  {
    "folke/snacks.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      explorer = {},
    terminal = {
      layout_config = {
        position = "bottom",
        size = 20
      }
    },
      picker = {
        layout_config = {
          position = "right"
        }
      }
    }
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("lualine").setup({
        options = {
          theme = "auto",
          section_separators = "",
          component_separators = "",
          globalstatus = true,
        },
      })
    end,
  },
  { "dracula/vim", name = "dracula" }
}
