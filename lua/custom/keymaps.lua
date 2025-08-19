-- Tabs
vim.keymap.set('n', '<C-x>', vim.cmd.tabclose, { desc = 'Close current tab' })

for i = 1, 4 do
  vim.keymap.set('n', '<C-' .. i .. '>', function()
    vim.cmd('tabn ' .. i)
  end, { desc = 'Switch to ' .. i .. ' tab' })
end
