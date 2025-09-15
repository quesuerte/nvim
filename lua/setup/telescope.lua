-- git clone https://github.com/nvim-telescope/telescope.nvim.git ./pack/nvim/start/telescope
-- Download latest release and add to path from following repo:
-- https://github.com/BurntSushi/ripgrep/releases
-- Or, for linux, run the following command:
-- `apt install ripgrep`

local f=io.open("~/.config/nvim/pack/nvim/start/telescope-fzf-native/build/libfzf.dll","r")
if f~=nil then io.close() else
    if package.config:sub(1,1) == "\\" then
        os.execute('powershell -Command "cd ~/.config/nvim/pack/nvim/start/telescope-fzf-native/; mkdir -p build; gcc -O3 -Wall -fpic -std=gnu99 -shared src/fzf.c -o build/libfzf.dll"')
    else
        os.execute('bash -c "cd ~/.config/nvim/pack/nvim/start/telescope-fzf-native/; mkdir -p build; gcc -O3 -Wall -fpic -std=gnu99 -shared src/fzf.c -o build/libfzf.so"')
    end
end
require('telescope').load_extension('fzf')
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
