-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- EXAMPLE
local servers = { "clangd", "html", "cssls" }
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- configuring single server, example: typescript
-- lspconfig.ts_ls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }
--

lspconfig.ruby_lsp.setup({
    cmd = { "ruby-lsp" },  -- or the full path to ruby-lsp if it's not globally available
    filetypes = { "ruby" },
    settings = {
        ruby = {
            lint = {
                enabled = true,
                lintOnSave = true,
            },
            format = {
                enable = true,
                autoFormat = true,
            },
        },
    },
})
