require("mason").setup()

require("mason-tool-installer").setup({
  ensure_installed = {
    -- Linters

    -- lua
    "selene",
    -- javascript & typescript
    "eslint_d",
    -- sql
    "sqlfmt",
    -- php
    "phpstan",
    -- css
    "stylelint",

    -- Formatters

    -- lua
    "stylua",
    -- javascript & typescript  & html & css
    "prettier",
    -- sql
    "sqlfmt",
    -- php
    "php-cs-fixer",

    -- LSPs

    -- lua
    "lua-language-server",
    -- javascript & typescript
    "typescript-language-server",
    -- sql
    "sqlls",
    -- php
    "phpactor",
    -- vue
    "vue-language-server",
    -- css
    "css-lsp",
    -- html
    "html-lsp",
    -- rust
    "rust-analyzer",
    -- tailwind
    "tailwindcss-language-server",
    -- docker
    "dockerfile-language-server",
    "docker-compose-language-service",
  },
  auto_update = false,
  run_on_start = true,
  start_delay = 3000,
  integrations = {
    ['mason-lspconfig'] = true,
    ['mason-null-ls'] = true,
    ['mason-nvim-dap'] = true,
  },
})