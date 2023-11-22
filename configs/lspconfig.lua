local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local lsp_signature = require "lsp_signature"
local util = require "lspconfig/util"

lspconfig.gopls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "gopls" },
  filetypes = { "go", "gomod", "gowork", "gotmpl" },
  root_dir = util.root_pattern("go.work", "go.mod", ".git"),
  settings = {
    gopls = {
      completeUnimported = true,
      usePlaceholders = true,
      analyses = {
        unuserdparams = true,
        unusedwrite = true,
        unusedvariable = true,
      },
    },
  },
}

lsp_signature.setup {
  bind = true, -- This is mandatory, otherwise border config won't get registered.
  handler_opts = {
    border = "rounded",
  },
}

lspconfig.pyright.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig.terraformls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig.biome.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig.lua_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
