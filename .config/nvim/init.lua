vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = ' '
vim.opt.number = true
vim.opt.relativenumber = true

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    }
  }
}

local opts = {}

require("lazy").setup(plugins, opts)

-- Telescope keybindings
local builtin = require("telescope.builtin")
vim.keymap.set("n", '<leader>ff', builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})

-- nvim-tree configuration
require("nvim-tree").setup({
  auto_close = true,
  update_focused_file = {
    enable = true,
    update_cwd = true,
  },
  view = {
    width = 30,
    preserve_window_proportions = true,
    side = "right",
  },
  renderer = {
    highlight_git = true,
    icons = {
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
      },
    },
  },
  git = {
    enable = true,
  }
})

-- Keybinding to toggle nvim-tree
vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>", {})

-- Treesitter configuration
local config = require("nvim-treesitter.configs")
config.setup({
  ensure_installed = {"lua", "c", "javascript"},
  highlight = {enable = true},
  indent = { enable = true}
})

-- Catppuccin theme setup
require("catppuccin").setup()
vim.cmd.colorscheme "catppuccin"

