-- nvim-lspconfig setup
-- Make sure you've run git clone https://github.com/neovim/nvim-lspconfig ./pack/nvim/start/nvim-lspconfig
vim.lsp.config['rust-analyzer'] = {
    cmd = { 'rust-analyzer' },
    filetypes = { 'rust' },
    root_markers = { 'Cargo.toml' }
}

vim.lsp.enable('pyright')
vim.lsp.enable('rust-analyzer')
vim.lsp.enable('yamlls')
-- npm install -g typescript typescript-language-server
vim.lsp.enable('ts_ls')
vim.lsp.enable('jdtls')

