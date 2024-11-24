require("mason-lspconfig").setup({
  ensure_installed = {
    "eslint",          -- eslint-lsp
    "ts_ls",           -- typescript-language-server
    "tailwindcss",     -- tailwindcss-language-server
    "html",            -- html-lsp
    "cssls",           -- css-lsp
    "rust_analyzer",   -- rust-analyzer
    "lua_ls",          -- lua-language-server
    "clangd",          -- clangd
    "bashls",          -- Bash LSP
    "jsonls",          -- JSON LSP
    "yamlls",          -- YAML LSP
    "marksman",        -- Markdown LSP
    "pyright",         -- Python LSP
  },
})
