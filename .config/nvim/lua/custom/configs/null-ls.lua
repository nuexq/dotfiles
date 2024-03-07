local null_ls = require("null-ls")

local opts = {
  sources = {
    null_ls.builtins.formatting.prettierd,
  },

}

return opts
