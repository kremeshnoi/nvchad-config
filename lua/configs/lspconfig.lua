require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

local servers = {
    -- lua
    "lua_ls",
    -- javascript & typescript
    "ts_ls",
    -- sql
    "sqlls",
    -- php
    "phpactor",
    -- vue
    "vuels",
    -- css
    "cssls",
    -- html
    "html",
    -- rust
    "rust_analyzer",
    -- tailwind
    "tailwindcss",
    -- docker
	  "dockerls",
}
local nvlsp = require "nvchad.configs.lspconfig"

for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup({
		on_attach = nvlsp.on_attach,
		on_init = nvlsp.on_init,
		capabilities = nvlsp.capabilities,
	})
end

lspconfig.ts_ls.setup{
  init_options = {
    plugins = {
      {
        name = "@vue/typescript-plugin",
        location = "/usr/local/lib/node_modules/@vue/typescript-plugin",
        languages = {"javascript", "typescript", "vue"},
      },
    },
  },
  filetypes = {
    "javascript",
    "typescript",
    "vue",
  },
}

lspconfig.rust_analyzer.setup({
	on_attach = function(_, bufnr)
		vim.lsp.inlay_hint.enable(true, { bufnr = bufnr })
	end,
})

lspconfig.dockerls.setup {
    settings = {
        docker = {
	      languageserver = {
	        formatter = {
		    ignoreMultilineInstructions = true,
		    },
	    },
	  }
  }
}
