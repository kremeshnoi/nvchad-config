---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "everblush",
  transparency = true,
}

M.ui = {
  tabufline = {
    enabled = false,
  },
  statusline = {
    enabled = true,
    theme = "vscode_colored",
    separator_style = "default",
  },
}

M.nvdash = {
  load_on_startup = false,
}

return M
