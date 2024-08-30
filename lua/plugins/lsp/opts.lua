local M = {}
local keymap = vim.keymap.set
M.capabilities = require("nvchad.configs.lspconfig").capabilities

local function lsp_keymaps(bufnr)
  local buf_opts = { buffer = bufnr, silent = true }
  keymap("n", "gD", vim.lsp.buf.declaration, buf_opts)
  keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>", buf_opts)
  keymap("n", "<leader>dp", "<cmd>lua vim.diagnostic.open_float()<cr>", buf_opts)
  keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<cr>", buf_opts)
  keymap("n", "<leader>dK", "<cmd>lua vim.lsp.buf.signature_help()<cr>", buf_opts)
  keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<cr>", buf_opts)
end

M.on_attach = function(client, bufnr)
  lsp_keymaps(bufnr)
end

M.on_init = function(client, _)
  if client.supports_method "textDocument/semanticTokens" then
    client.server_capabilities.semanticTokensProvider = nil
  end
end

return M
