return {
	{
		"williamboman/mason.nvim",
		cmd = { "Mason", "MasonInstall", "MasonInstallAll", "MasonUpdate" },

		opts = {
			ensure_installed = {
				"biome",
        "eslint_d"
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
					"eslint", -- eslint-lsp
					"ts_ls", -- typescript-language-server
					"tailwindcss", -- tailwindcss-language-server
					"html", -- html-lsp
					"cssls", -- css-lsp
					"rust_analyzer", -- rust-analyzer
					"lua_ls", -- lua-language-server
					"clangd", -- clangd
					"bashls", -- Bash LSP
					"jsonls", -- JSON LSP for better support with JSON files
					"yamlls", -- YAML LSP for YAML files
					"marksman", -- Markdown LSP for better markdown support
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
			lspconfig.tsserver.setup({})

			-- Keymaps
			vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "LSP hover" })
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "LSP definition" })
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP Action" })
		end,
	},
}
