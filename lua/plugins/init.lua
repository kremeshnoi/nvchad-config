return {
	{
		"stevearc/conform.nvim",
		event = "BufWritePre",
		config = function()
			require("configs.conform")
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("configs.lspconfig")
		end,
	},
	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				-- linters
				"bacon",
				"selene",
				"phpstan",
				"rubocop",
				"eslint_d",
				"stylelint",
				-- formatters
				"stylua",
				"rubocop",
				"prettier",
				"php-cs-fixer",
				"sql-formatter",
				-- LSPs
				"taplo",
				"sqlls",
				"lemminx",
				"css-lsp",
				"ruby-lsp",
				"phpactor",
				"html-lsp",
				"eslint-lsp",
				"rust-analyzer",
				"lua-language-server",
				"vue-language-server",
				"yaml-language-server",
				"some-sass-language-server",
				"typescript-language-server",
				"dockerfile-language-server",
				"typescript-language-server",
				"tailwindcss-language-server",
				"docker-compose-language-server",
				"graphql-language-service-cli",
			},
		},
	},
	{
		"stevearc/dressing.nvim",
		lazy = false,
		opts = {},
	},
	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			ensure_installed = {
				"bash",
				"cmake",
				"css",
				"csv",
				"dockerfile",
				"dot",
				"editorconfig",
				"gitcommit",
				"gitignore",
				"graphql",
				"html",
				"http",
				"javascript",
				"jsdoc",
				"json",
				"lua",
				"make",
				"markdown",
				"php",
				"phpdoc",
				"ruby",
				"rust",
				"scheme",
				"scss",
				"sql",
				"toml",
				"typescript",
				"vim",
				"vimdoc",
				"vue",
				"xml",
				"yaml",
			},
		},
	},
	{
		"tpope/vim-fugitive",
	},
	{
		"rbong/vim-flog",
		lazy = true,
		cmd = { "Flog", "Flogsplit", "Floggit" },
		dependencies = {
			"tpope/vim-fugitive",
		},
	},
	{
		"kevinhwang91/nvim-bqf",
		lazy = false,
	},
	{
		"folke/trouble.nvim",
		lazy = false,
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
	{ "sindrets/diffview.nvim", lazy = false },
	{
		"ggandor/leap.nvim",
		lazy = false,
		config = function()
			require("leap").add_default_mappings(true)
		end,
	},
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		lazy = false,
		config = function()
			require("todo-comments").setup()
		end,
	},
	{
		"Exafunction/codeium.vim",
		lazy = false,
	},
	{ "folke/which-key.nvim", enabled = false },
}
