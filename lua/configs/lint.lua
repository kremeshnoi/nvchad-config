local lint = require("lint")

lint.linters_by_ft = {
  lua = { "selene" },
  php = { "phpstan" },
  css = { "stylelint" },
  javascript = { "eslint_d" },
  typescript = { "eslint_d" },
  typescriptreact = { "eslint_d" },
  javascriptreact = { "eslint_d" },
}

vim.api.nvim_create_autocmd("BufWritePost", {
  callback = function()
    lint.try_lint()
  end,
})
