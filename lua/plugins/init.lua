return {
  -- Formatters
  {
    "stevearc/conform.nvim",
    lazy = false,
    event = "BufWritePre",
    config = function()
      require "configs.conform"
    end,
  },

  -- Linters
  {
    "mfussenegger/nvim-lint",
    lazy = false,
    event = "BufWritePost",
    config = function()
      require "configs.lint"
    end,
  },
 
  -- LSP & Completion
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    lazy = false,
  },

  -- Plugin Managers
  {
    "williamboman/mason.nvim",
    lazy = false,
    dependencies = {
      "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
    config = function()
      require "configs.mason"
    end,
  },

  -- Treesitter (Syntax Highlighting & Parsing)
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    config = function()
      require "configs.treesitter"
    end,
  },

  -- UI Enhancements
  {
    "nvchad/ui",
    lazy = false,
    config = function()
      require "nvchad"
    end,
  },
  {
    "nvchad/base46",
    lazy = false,
    build = function()
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
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require "configs.nvim-tree"
    end,
  },
  {
    "folke/trouble.nvim",
    lazy = false,
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    lazy = false,
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

  -- Miscellaneous Helpers
  {
    "wakatime/vim-wakatime",
    lazy = false,
  },
  {
    "folke/which-key.nvim",
    lazy = false,
  },
  {
    "folke/todo-comments.nvim",
    lazy = false,
    dependencies = { "nvim-lua/plenary.nvim" },
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

  -- AI Assistance
  {
    "github/copilot.vim",
    lazy = false,
  },
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    lazy = false,
    dependencies = {
      { "github/copilot.vim" },
      { "nvim-lua/plenary.nvim", branch = "master" },
    },
    build = "make tiktoken",
    opts = {},
  },

  -- Quickfix Enhancements
  {
    "kevinhwang91/nvim-bqf",
    lazy = false,
  },
}
