local lsp = require('lsp-zero').preset({})

local lsp_servers = {
	'clangd',
	'lua_ls',
	'rust_analyzer',
    'pyright',
}

lsp.ensure_installed(lsp_servers)
lsp.setup_servers(lsp_servers)

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)


lsp.setup()
