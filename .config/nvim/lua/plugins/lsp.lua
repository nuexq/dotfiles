return {
  {
    "williamboman/mason.nvim",
    cmd = { "Mason", "MasonInstall", "MasonInstallAll", "MasonUpdate" },

    opts = {
      ensure_installed = {
        "biome",
        "eslint_d",
      },
    },

    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "eslint",        -- eslint-lsp
          "ts_ls",         -- typescript-language-server
          "tailwindcss",   -- tailwindcss-language-server
          "html",          -- html-lsp
          "cssls",         -- css-lsp
          "rust_analyzer", -- rust-analyzer
          "lua_ls",        -- lua-language-server
          "clangd",        -- clangd
          "bashls",        -- Bash LSP
          "jsonls",        -- JSON LSP for better support with JSON files
          "yamlls",        -- YAML LSP for YAML files
          "marksman",      -- Markdown LSP for better markdown support
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local lspconfig = require("lspconfig")

      -- Get all servers installed via Mason
      local mason_lspconfig = require("mason-lspconfig")
      local servers = mason_lspconfig.get_installed_servers()

      -- Automatically set up each installed server
      for _, server in ipairs(servers) do
        lspconfig[server].setup({
          capabilities = capabilities,
        })
      end

      -- Keymaps
      vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "LSP hover" })
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "LSP definition" })
      vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP Action" })
    end,
  },
}
