require "nvchad.options"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<A-G>", ":Flog<CR>", { desc = "Open git graph" })
