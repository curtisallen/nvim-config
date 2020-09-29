lua <<EOF
-- totally optional to use setup
require('telescope').setup{
  defaults = {
    shorten_path = false -- currently the default value is true
  }
}
EOF

nnoremap <Leader>p <cmd>lua require'telescope.builtin'.git_files{}<CR>
nnoremap <silent> gr <cmd>lua require'telescope.builtin'.lsp_references{}<CR>
