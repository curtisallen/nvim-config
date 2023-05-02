lua <<EOF
require("mason").setup()
require("mason-lspconfig").setup {
    ensure_installed = { "gopls", "rust_analyzer", "tsserver", "bashls", "denols", "dockerls" },
}
EOF
