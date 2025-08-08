# Summary
This is an extremely baseline setup of `nvim` to provide necessary IDE tooling.

I've tried only to include the most official libraries, and completely avoided using a package manager.

# Setup
Run the following git commands in order to manually needed libraries:
```
git clone https://github.com/nvim-telescope/telescope.nvim.git ./pack/nvim/start/telescope
git clone https://github.com/neovim/nvim-lspconfig ./pack/nvim/start/nvim-lspconfig
git clone -b master https://github.com/nvim-treesitter/nvim-treesitter.git ./pack/nvim/start/nvim-treesitter
git clone https://github.com/folke/tokyonight.nvim.git ./pack/nvim/start/tokyonight
git clone https://github.com/nvim-lua/plenary.nvim.git ./pack/nvim/start/plenary
```
