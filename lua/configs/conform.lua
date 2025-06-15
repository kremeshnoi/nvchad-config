require("conform").setup {
  formatters_by_ft = {
    sql = { "sqlfmt" },
    lua = { "stylua" },
    css = { "stylelint" },
    html = { "prettier" },
    javascript = { "prettier" },
    typescript = { "prettier" },
    javascriptreact = { "prettier" },
    typescriptreact = { "prettier" },
  },
  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
}
