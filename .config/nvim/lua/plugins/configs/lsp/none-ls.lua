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
