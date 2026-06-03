-- Buffer manager

vim.pack.add { {
  src = 'https://github.com/mistweaverco/bafa.nvim.git',
  version = 'v1.12.3',
} }

require('bafa').setup {}

vim.keymap.set('n', '<leader>tb', ":lua require('bafa.ui').toggle()<CR>")
