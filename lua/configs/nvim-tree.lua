require("nvim-tree").setup {
  filters = {
    enable = false,
  },
  view = {
    width = 40,
  },
  renderer = {
    icons = {
      glyphs = {
        git = {
          unstaged = "󰺕",
          staged = "󰐾",
          unmerged = "",
          renamed = "",
          untracked = "",
          deleted = "",
          ignored = "󰘓",
        },
      },
    },
  },
  diagnostics = {
    enable = true,
    icons = {
      hint = "󰲉 ",
      info = "󰲼 ",
      warning = " ",
      error = "󰯈 ",
    },
  },
}
