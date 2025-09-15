# Summary
This is an extremely baseline setup of `nvim` to provide necessary IDE tooling.

I've tried only to include the most official libraries, and completely avoided using a package manager.

# Installing `neovim`
## Windows
Use the installer method, it'll work

## Linux
`apt` repositories are pretty far behind. Follow the directions in the [Building Neovim](https://github.com/neovim/neovim/wiki/Building-Neovim/688be28f98c18e73b5043879b5963287a9b13d6c) page to build from source.

# Setup
If cloning the repo, plugins can be downloaded automatically using:
`git clone --recurse-submodules -b minimal https://github.com/quesuerte/nvim.git`

Otherwise, if the repo is already downloaded, use:
`git submodule update --init --recursive --remote`
