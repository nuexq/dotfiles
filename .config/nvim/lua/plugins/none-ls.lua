return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvimtools/none-ls-extras.nvim",
	},

	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.biome,
				null_ls.builtins.formatting.clang_format.with({
					filetypes = { "c", "cpp", "cc", "cxx", "h", "hpp" },
				}),
				require("none-ls.diagnostics.eslint_d"),
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, { desc = "Formatting" })
	end,
}
