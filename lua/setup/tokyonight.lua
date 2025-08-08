-- Configuration must happen before setting the colorscheme
-- Default colorscheme doesn't support treesitter highlight groups, setting up manually:
-- git clone https://github.com/folke/tokyonight.nvim.git ./pack/nvim/start/tokyonight
require("tokyonight").setup({})

--Startup tokyonight
vim.o.background = "light"
vim.cmd[[colorscheme tokyonight]]
