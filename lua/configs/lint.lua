local lint = require "lint"

lint.linters_by_ft = {
  lua = { "selene" },
  css = { "stylelint" },
  javascript = { "eslint_d" },
  typescript = { "eslint_d" },
  typescriptreact = { "eslint_d" },
  javascriptreact = { "eslint_d" },
}

vim.api.nvim_create_autocmd({ "BufReadPost", "BufWritePost", "BufNewFile" }, {
  callback = function()
    lint.try_lint()
  end,
})
