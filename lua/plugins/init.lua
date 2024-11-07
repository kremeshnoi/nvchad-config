return {
	-- Formatters & Linters
	{
		"stevearc/conform.nvim",
		lazy = false,
		event = "BufWritePre",
		config = function()
			require("configs.conform")
		end,
	},
	{
		"williamboman/mason.nvim",
		lazy = false,
		opts = {
			ensure_installed = {
				-- Linters
				"bacon",
				"selene",
				"phpstan",
				"rubocop",
				"eslint_d",
				"stylelint",
				-- Formatters
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
				"tailwindcss-language-server",
				"docker-compose-language-server",
				"graphql-language-service-cli",
			},
		},
	},

	-- LSP & Completion
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			require("configs.lspconfig")
		end,
	},
	{
		"hrsh7th/nvim-cmp",
		lazy = false,
	},

	-- Treesitter (Syntax Highlighting & Parsing)
	{
		"nvim-treesitter/nvim-treesitter",
		lazy = false,
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

	-- UI Enhancements
	{
		"NvChad/base46",
		lazy = false,
		config = function()
			require("base46").load_all_highlights()
		end,
	},
	{
		"stevearc/dressing.nvim",
		lazy = false,
		opts = {},
	},
	{
		"nvzone/minty",
		lazy = false,
		cmd = { "Shades", "Huefy" },
	},
	{
		"nvzone/volt",
		lazy = false,
	},
	{
		"nvzone/menu",
		lazy = false,
	},
	{
		"nvim-tree/nvim-web-devicons",
		lazy = false,
	},
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		lazy = false,
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
	},
	{
		"folke/trouble.nvim",
		lazy = false,
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		enabled = false,
	},

	-- Git Integration
	{
		"tpope/vim-fugitive",
		lazy = false,
	},
	{
		"rbong/vim-flog",
		lazy = false,
		cmd = { "Flog", "Flogsplit", "Floggit" },
		dependencies = {
			"tpope/vim-fugitive",
		},
	},
	{
		"lewis6991/gitsigns.nvim",
		lazy = false,
	},
	{
		"sindrets/diffview.nvim",
		lazy = false,
	},

	-- Search & Navigation
	{
		"nvim-telescope/telescope.nvim",
		lazy = false,
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	{
		"ggandor/leap.nvim",
		lazy = false,
		config = function()
			require("leap").add_default_mappings(true)
		end,
	},

	-- Miscellaneous Helpers
	{
		"folke/which-key.nvim",
		enabled = false,
	},
	{
		"folke/todo-comments.nvim",
		lazy = false,
		dependencies = { "nvim-lua/plenary.nvim" },
	},

	-- AI Assistance
	{
		"Exafunction/codeium.vim",
		lazy = false,
	},

	-- Quickfix Enhancements
	{
		"kevinhwang91/nvim-bqf",
		lazy = false,
	},
}
