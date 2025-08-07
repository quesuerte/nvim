-- Key mappings
vim.g.mapleader = " "
vim.wo.number = true
vim.wo.relativenumber = true
vim.g.netrw_bufsettings = 'noma nomod nu rnu nobl nowrap ro'
vim.g.netrw_altv = 1
vim.cmd([[
  highlight LineNr      guifg=white
  highlight LineNrAbove guifg=white
  highlight LineNrBelow guifg=white
]])

vim.opt.tabstop = 4
vim.opt.softtabstop=4
vim.opt.shiftwidth=4
vim.opt.expandtab = true
vim.opt.wrap = false
vim.opt.splitright = true
vim.opt.splitbelow = true

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>ls", vim.cmd.ls)
vim.keymap.set("n", "<leader>ot", vim.cmd.term)

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")


vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>y", "\"+Y")
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

vim.keymap.set("n", "<leader>vs", "<C-w>v")
vim.keymap.set("n", "<leader>hs", "<C-w>s")

vim.keymap.set("n", "<leader>wl", "<C-w>l")
vim.keymap.set("n", "<leader>wk", "<C-w>k")
vim.keymap.set("n", "<leader>wj", "<C-w>j")
vim.keymap.set("n", "<leader>wh", "<C-w>h")

vim.keymap.set("n", "<leader>bc", "<C-w>c")

vim.opt.shell = "powershell"
vim.opt.shellcmdflag = "-command"
vim.opt.shellquote = "\""
vim.opt.shellxquote = ""

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

-- nvim-treesitter
-- git clone -b main https://github.com/nvim-treesitter/nvim-treesitter.git ./pack/nvim/start/nvim-treesitter
require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the listed parsers MUST always be installed)
  ensure_installed = { "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "java", "json", "xml", "yaml", "python", "typescript", "rust"},

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  -- List of parsers to ignore installing (or "all")
  -- ignore_install = { "javascript" },

  ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
  parser_install_dir = "~/.config/nvim/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  }
}
