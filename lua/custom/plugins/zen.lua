-- Zen mode

vim.pack.add { 'https://github.com/folke/zen-mode.nvim' }
require('zen-mode').setup {}

vim.keymap.set('n', '<leader>Z', ':ZenMode<CR>', { desc = 'Toggle zen mode' })
