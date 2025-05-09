local util = require("formatter.util")

require("formatter").setup {
  logging = true,
  log_level = vim.log.levels.WARN,
  filetype = {
    lua = {
      require("formatter.filetypes.lua").stylua,
      function()
        return {
          exe = "stylua",
          args = {
            "--search-parent-directories",
            "--stdin-filepath",
            util.escape_path(util.get_current_buffer_file_path()),
            "--",
            "-",
          },
          stdin = true,
        }
      end,
    },
    ["*"] = {
      require("formatter.filetypes.any").remove_trailing_whitespace
    }
  }
}
