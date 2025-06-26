vim.lsp.config['rust-analyzer'] = {
    cmd = { 'rust-analyzer' },
    filetypes = { 'rust' },
    root_markers = { 'Cargo.toml' }
}

--  vim.lsp.config['pyright'] = {
--      cmd = { 'pyright' },
--      filetypes = { 'python' },
--      root_markers = { 'requirements.txt', 'setup.py' }
--  }

vim.lsp.enable('pyright')
vim.lsp.enable('rust-analyzer')
vim.lsp.enable('yamlls')
-- npm install -g typescript typescript-language-server
vim.lsp.enable('ts_ls')
