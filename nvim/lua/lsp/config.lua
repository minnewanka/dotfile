vim.fn.sign_define("DiagnosticSignError", {  text = "", numhl = "DiagnosticSignError" })
vim.fn.sign_define("DiagnosticSignWarn", { text = "", numhl = "DiagnosticSignWarn" })
vim.fn.sign_define("DiagnosticSignInformation", {  text = "", numhl = "DiagnosticSignInfo" })
vim.fn.sign_define("DiagnosticSignHint", {  text = "", numhl = "DiagnosticSignHint" })

vim.lsp.protocol.CompletionItemKind = {
    "   (Text) ",
    "   (Method)",
    "   (Function)",
    "   (Constructor)",
    " ﴲ  (Field)",
    "[] (Variable)",
    "   (Class)",
    " ﰮ  (Interface)",
    "   (Module)",
    " 襁 (Property)",
    "   (Unit)",
    "   (Value)",
    " 練 (Enum)",
    "   (Keyword)",
    "   (Snippet)",
    "   (Color)",
    "   (File)",
    "   (Reference)",
    "   (Folder)",
    "   (EnumMember)",
    " ﲀ  (Constant)",
    " ﳤ  (Struct)",
    "   (Event)",
    "   (Operator)",
    "   (TypeParameter)"
}

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
        virtual_text = false
    }
)

vim.lsp.handlers["textDocument/hover"] =
  vim.lsp.with(
  vim.lsp.handlers.hover,
  {
    border = "single"
  }
)

vim.lsp.handlers["textDocument/signatureHelp"] =
  vim.lsp.with(
  vim.lsp.handlers.signature_help,
  {
    border = "single"
  }
)

vim.api.nvim_set_keymap('n', 'K',  [[<Cmd>lua vim.lsp.buf.hover()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'gs',  [[<Cmd>lua vim.lsp.buf.signature_help()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'ge',  [[<Cmd>lua vim.lsp.diagnostic.show_line_diagnostics({ border = "single" })<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '[d',  [[<Cmd>lua vim.lsp.diagnostic.goto_prev()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', ']d',  [[<Cmd>lua vim.lsp.diagnostic.goto_next()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<space>ca',  [[<Cmd>Lspsaga code_action<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<space>rr',  [[<Cmd>Lspsaga rename<CR>]], { noremap = true, silent = true })

