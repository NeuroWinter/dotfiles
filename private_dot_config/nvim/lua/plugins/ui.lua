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
  { "dracula/vim", name = "dracula" },
  {
	"rose-pine/neovim",
	name = "rose-pine",
	config = function()
        require("rose-pine").setup({
            variant = "moon", -- auto, main, moon, or dawn
            dark_variant = "moon", -- main, moon, or dawn
            dim_inactive_windows = true,
            extend_background_behind_borders = true,

            enable = {
                terminal = true,
                legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
                migrations = true, -- Handle deprecated options automatically
            },

            styles = {
                bold = true,
                italic = true,
                transparency = true,
            },
        })
        vim.cmd("colorscheme rose-pine-moon")
	end
  },
}
