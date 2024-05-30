local plugins = {
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function()
      opts = require "plugins.configs.treesitter"
      opts.ensure_installed = {
        "lua",
        "javascript",
        "typescript",
        "tsx",
        "html",
        "css",
        "tmux",
        "json",
        "rust",
      }
      return opts
    end
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "eslint-lsp",
        "typescript-language-server",
        "tailwindcss-language-server",
        "prettierd",
        "html-lsp",
        "css-lsp",
        "rust-analyzer",
        "lua-language-server",
      }
    }
  },
  {
    "windwp/nvim-ts-autotag",
    ft = {
      "javascript",
      "javascriptreact",
      "typescript",
      "typescriptreact",
    },
    config = function()
      require("nvim-ts-autotag").setup()
    end
  },
  ---
  {
    "nvimtools/none-ls.nvim",
    event = "VeryLazy",
    opts = function()
      return require "custom.configs.null-ls"
    end,
  },
  {
    "christoomey/vim-tmux-navigator",
    keys = {
      { "<C-\\>", "<cmd>TmuxNavigatePrevious<cr>", desc = "Go to the previous pane" },
      { "<C-h>",  "<cmd>TmuxNavigateLeft<cr>",     desc = "Got to the left pane" },
      { "<C-j>",  "<cmd>TmuxNavigateDown<cr>",     desc = "Got to the down pane" },
      { "<C-k>",  "<cmd>TmuxNavigateUp<cr>",       desc = "Got to the up pane" },
      { "<C-l>",  "<cmd>TmuxNavigateRight<cr>",    desc = "Got to the right pane" },
    },
  },
  {
    "nvim-neotest/neotest",
    dependencies = {
      ...,
      "marilari88/neotest-vitest",
    },
    config = function()
      require("neotest").setup({
        adapters = {
          require("neotest-vitest"),
        }
      })
    end,
  }
}
return plugins
