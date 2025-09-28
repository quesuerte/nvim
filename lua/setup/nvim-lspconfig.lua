-- nvim-lspconfig setup
-- Make sure you've run git clone https://github.com/neovim/nvim-lspconfig ./pack/nvim/start/nvim-lspconfig

-- pipx install pyright
vim.lsp.enable('pyright')
-- rustup component add rust-analyzer
-- may also need to change version of rust being used--check rustup version and rust-analyzer --version
vim.lsp.enable('rust_analyzer')
vim.lsp.enable('yamlls')
-- npm install -g typescript typescript-language-server
vim.lsp.enable('ts_ls')
vim.lsp.enable('jdtls')
-- npm install -g bash-language-server
vim.lsp.enable('bashls')
-- npm install -g sql-language-server
vim.lsp.enable('sqlls')

vim.lsp.config['rust_analyzer'] = {
    cmd = { "rustup", "run", "stable", "rust-analyzer" },
}

vim.diagnostic.config({
    virtual_text = {
        current_line = true,
        prefix = '>'
    },
})
vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename)
