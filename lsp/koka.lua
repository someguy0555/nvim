---@brief
---
--- https://koka-lang.github.io/koka/doc/index.html
--- Koka is a functional programming language with effect types and handlers.

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.semanticTokens = nil

return {
  cmd = { 'koka', '--language-server', '--lsstdio' },
  filetypes = { 'koka' },
  root_markers = { '.git', '.koka' },

  capabilities = capabilities,

  on_init = function(client)
    client.server_capabilities.semanticTokensProvider = nil
  end,

  on_attach = function(client, bufnr)
    client.server_capabilities.semanticTokensProvider = nil

    vim.lsp.semantic_tokens.enable(false, { bufnr = bufnr })
  end,
}
