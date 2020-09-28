lua <<EOF
local nvim_lsp = require 'nvim_lsp'
local configs = require 'nvim_lsp/configs'
local util = require 'nvim_lsp/util'

-- configure hacklang lsp
configs.hack = {
  default_config = {
    cmd = {"/usr/local/bin/hh_client", "lsp", "--from", "nvim"};
    filetypes = {"hack", "php"};
    root_dir = util.root_pattern(".git");
  };
  -- on_new_config = function(new_config) end;
  -- on_attach = function(client, bufnr) end;
  docs = {
    description = [[
]];
    default_config = {
      root_dir = [[root_pattern(".git")]];
    };
  };
}

nvim_lsp.hack.setup{on_attach=require'completion'.on_attach}
-- standard lsps that we use
nvim_lsp.gopls.setup{on_attach=require'completion'.on_attach}
nvim_lsp.tsserver.setup{on_attach=require'completion'.on_attach}
nvim_lsp.bashls.setup{on_attach=require'completion'.on_attach}
nvim_lsp.yamlls.setup{on_attach=require'completion'.on_attach}
-- vim:et ts=2 sw=2
EOF

nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> 1gD   <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> g0    <cmd>lua vim.lsp.buf.document_symbol()<CR>
nnoremap <silent> gW    <cmd>lua vim.lsp.buf.workspace_symbol()<CR>
nnoremap <silent> gl    <cmd>lua vim.lsp.buf.declaration()<CR>
