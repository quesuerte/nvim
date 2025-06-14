require('nvim-treesitter').setup {
	-- Directory to install parsers and queries to
	install_dir = vim.fn.stdpath('data') .. '/site'
}
require('nvim-treesitter').install { 'lua', 'yaml', 'javascript', 'typescript', 'python', 'rust', 'helm', 'json', 'xml' }
vim.api.nvim_create_autocmd('FileType', {
	pattern = { '<filetype>' },
	callback = function() vim.treesitter.start() vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()' end,
})	

