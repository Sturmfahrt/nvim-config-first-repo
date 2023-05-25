require("mason").setup()
require("mason-lspconfig").setup()

require("lspconfig").lua_ls.setup {
	on_attach = on_attach
}

local on_attach = function(_, _)
	vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
	vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

end
