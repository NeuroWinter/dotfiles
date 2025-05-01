return {
  -- Git integration
  { "tpope/vim-fugitive" },

  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate"
  },

  -- Formatter
  {
    "mhartington/formatter.nvim",
    config = function()
      require("config.formatter") -- move your formatter setup here
    end,
  },

  -- Linter
  {
    "mfussenegger/nvim-lint",
    config = function()
      require("config.lint")
    end
  },

  -- Strip trailing whitespace
  { "bronson/vim-trailing-whitespace" },

  -- Telescope
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" }
  },

  -- Beautify JS/HTML/CSS
  { "maksimr/vim-jsbeautify" },

  -- Terraform
  { "hashivim/vim-terraform" },
  { "juliosueiras/vim-terraform-completion" },
}
