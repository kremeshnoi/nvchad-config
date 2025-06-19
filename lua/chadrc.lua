---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "obsidian-ember",
  transparency = true,
}

M.ui = {
  tabufline = {
    enabled = true,
    modules = {
      btns = function()
        return ""
      end,
    },
  },
  statusline = {
    enabled = true,
    theme = "vscode_colored",
    separator_style = "block",
  },
}

M.nvdash = {
  load_on_startup = true,
  header = { " λ everything is a function " },
  buttons = {
    { txt = "─", hl = "NvDashFooter", no_gap = true, rep = true },
    {
      txt = function()
        local stats = require("lazy").stats()
        local ms = math.floor(stats.startuptime) .. " ms"
        return "  Loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms
      end,
      hl = "NvDashFooter",
      no_gap = true,
    },
    { txt = "─", hl = "NvDashFooter", no_gap = true, rep = true },
  },
}

return M
