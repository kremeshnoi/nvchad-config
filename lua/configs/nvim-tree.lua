require("nvim-tree").setup({
	renderer = {
		icons = {
			glyphs = {
				git = {
					unstaged = "M",
					staged = "S",
					unmerged = "U",
					renamed = "R",
					untracked = "N",
					deleted = "D",
					ignored = "I",
				},
			},
		},
	},
})
