local lspconfig = require("lspconfig")

lspconfig.ruby_lsp.setup({
  cmd = { "ruby-lsp" },
  filetypes = { "ruby" },
  root_dir = lspconfig.util.root_pattern("Gemfile", ".git"),
})

