lua <<EOF
local null_ls = require("null-ls")

null_ls.setup({
    sources = {
        -- null_ls.builtins.diagnostics.cspell,
        null_ls.builtins.code_actions.cspell,
        null_ls.builtins.completion.spell,
        null_ls.builtins.code_actions.shellcheck,
        null_ls.builtins.diagnostics.golangci_lint,
        null_ls.builtins.diagnostics.jsonlint,
    },
})
EOF
