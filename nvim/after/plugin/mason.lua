require("mason-lspconfig").setup {
    ensure_installed = { "bashls", "gopls", "ocamllsp", "pyright", "clangd", "lua_ls", "rust_analyzer"},
}
