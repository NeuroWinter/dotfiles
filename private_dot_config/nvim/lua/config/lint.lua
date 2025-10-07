local lint = require("lint")

-- ruff config
lint.linters.ruff = {
  cmd = "ruff",
  stdin = true,
  args = { "--quiet", "-" },
  stream = "stdout",
  ignore_exitcode = true,
  parser = require("lint.parser").from_errorformat("%f:%l:%c: %m", {
    source = "ruff",
    severity = vim.diagnostic.severity.WARN,
  }),
}

-- Linters by filetype
lint.linters_by_ft = {
  python = { "ruff" },
  terraform = { "tflint", "tfsec" },
  elixir = { "credo" },
  sh = { "shellcheck" },
  ts = { "eslint" },
}

-- Autocommand group for auto-linting
local lint_augroup = vim.api.nvim_create_augroup("LintOnEvents", { clear = true })

vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
  group = lint_augroup,
  callback = function()
    lint.try_lint()
  end,
})

-- Keymap to manually trigger lint
vim.keymap.set("n", "<leader>ll", function()
  lint.try_lint()
end, { desc = "Trigger linting for current file" })
