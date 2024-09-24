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
