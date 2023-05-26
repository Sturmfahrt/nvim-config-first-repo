require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "lua_ls", "rust_analyzer" } -- makes sure rust_analyzer and lua_ls are installed
})

local on_attach = function(_, _)
	vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
	vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

	vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
	vim.keymap.set('n', 'gi', vim.lsp.buf.implimentation, {})
	vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
	vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").lua_ls.setup {
	on_attach = on_attach, -- setup the on attach keymaps for lua lsp
	capabilities = capabilities -- tell it to actually talk to the code completion plugin
}

require("lspconfig").rust_analyzer.setup {
	on_attach = on_attach, -- setup the on attach keymaps for rust analyzer lsp
	capabilities = capabilities -- tell it to actually talk to the code completion plugin
}
