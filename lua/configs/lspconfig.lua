require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

local servers = {
  -- javascript & typescript
  "ts_ls",
  -- sql
  "sqlls",
  -- css
  "cssls",
  -- html
  "html",
  -- tailwind
  "tailwindcss",
  -- docker
  "dockerls",
}
local nvlsp = require "nvchad.configs.lspconfig"

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- lua
lspconfig.lua_ls.setup {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
  settings = {
    Lua = {
      runtime = {
        version = "LuaJIT",
        path = vim.split(package.path, ";"),
      },
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        library = {
          vim.env.VIMRUNTIME,
          vim.fn.stdpath "config",
          vim.fn.stdpath "data",
        },
        checkThirdParty = false,
      },
      telemetry = {
        enable = false,
      },
    },
  },
}

-- rust
lspconfig.rust_analyzer.setup {
  on_attach = function(client, bufnr)
    nvlsp.on_attach(client, bufnr)
    vim.lsp.inlay_hint.enable(true, { bufnr = bufnr })
  end,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
}

-- docker
lspconfig.dockerls.setup {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
  settings = {
    docker = {
      languageserver = {
        formatter = {
          ignoreMultilineInstructions = true,
        },
      },
    },
  },
}
