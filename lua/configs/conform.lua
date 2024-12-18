local options = {
	formatters_by_ft = {
		lua = { "stylua" },
		ruby = { "rubocop" },
		css = { "prettier" },
		html = { "prettier" },
		php = { "php-cs-fixer" },
		sql = { "sql-formatter" },
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

require("conform").setup(options)
