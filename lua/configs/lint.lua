require("lint").linters_by_ft = {
	lua = { "selene" },
	rust = { "bacon" },
	php = { "phpstan" },
	ruby = { "rubocop" },
	css = { "stylelint" },
	javascript = { "eslint_d" },
	typescript = { "eslint_d" },
	typescriptreact = { "eslint_d" },
	javascriptreact = { "eslint_d" },
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
	callback = function()
		require("lint").try_lint()
	end,
})
