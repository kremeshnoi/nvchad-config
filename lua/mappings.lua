require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<A-G>", ":Flog<CR>", { desc = "Open git graph" })
map("n", "<TAB>", "<cmd>bnext<CR>", { desc = "Next buffer" })
map("n", "<S-TAB>", "<cmd>bprevious<CR>", { desc = "Prev buffer" })
