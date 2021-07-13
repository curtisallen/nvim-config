lua <<EOF
local lspconfig = require'lspconfig'
local configs = require'lspconfig/configs'
-- Check if it's already defined for when I reload this file.
if not configs.hack then
  configs.hack = {
    default_config = {
      cmd = {"/usr/local/bin/com.docker.cli", "exec", "-i", "hhvm-slack-dev", "/usr/bin/hh_client", "lsp", "--from", "nvim"};
      filetypes = {'hack'};
      autostart = true;
      -- root_dir = lspconfig.util.root_pattern(".git");
      root_dir = function(fname)
        return nil
      end;
      settings = {};
    };
  }
end

lspconfig.hack.setup{on_attach=require'completion'.on_attach}

-- standard lsps that we use
lspconfig.gopls.setup{on_attach=require'completion'.on_attach}
lspconfig.tsserver.setup{on_attach=require'completion'.on_attach}
lspconfig.bashls.setup{on_attach=require'completion'.on_attach}
lspconfig.solargraph.setup{on_attach=require'completion'.on_attach}
lspconfig.denols.setup{
  on_attach=require'completion'.on_attach;
  root_dir = lspconfig.util.root_pattern('.gitignore');
}
-- lspconfig.yamlls.setup{on_attach=require'completion'.on_attach}
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
