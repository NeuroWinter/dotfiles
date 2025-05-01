-- Bootstrap lazy.nvim if it's not already installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Load and return plugin specs from submodules
require("lazy").setup({
  require("plugins.ui"),
  require("plugins.lsp"),
  require("plugins.completion"),
  require("plugins.devtools"),
  require("plugins.lang.elixir"),
  require("plugins.misc"),
})

