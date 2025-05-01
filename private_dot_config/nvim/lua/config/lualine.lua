require("lualine").setup({
  options = {
    theme = "dracula",
    icons_enabled = true,
    globalstatus = true,
    section_separators = { left = "", right = "" },
    component_separators = { left = "│", right = "│" },
    disabled_filetypes = {},
  },
  sections = {
    lualine_a = { { "mode", icon = "" } },
    lualine_b = { "branch", "diff", "diagnostics" },
    lualine_c = { { "filename", path = 1 } }, -- 0 = just file, 1 = relative, 2 = absolute
    lualine_x = { "encoding", "fileformat", "filetype" },
    lualine_y = { "progress" },
    lualine_z = { "location" },
  },
})
