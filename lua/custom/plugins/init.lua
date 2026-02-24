vim.api.nvim_create_autocmd('FileType', {
  pattern = 'go',
  callback = function()
    vim.opt_local.tabstop = 4
    vim.opt_local.shiftwidth = 4
    vim.opt_local.expandtab = false
  end,
})

-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- alpha is a fast and fully programmable greeter for neovim.
  {
    'goolord/alpha-nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      local startify = require 'alpha.themes.startify'
      -- available: devicons, mini, default is mini
      -- if provider not loaded and enabled is true, it will try to use another provider
      startify.file_icons.provider = 'devicons'
      require('alpha').setup(startify.config)
    end,
  },

  -- http client
  {
    'mistweaverco/kulala.nvim',
    ft = { 'http', 'rest' },
    opts = {
      global_keymaps = true,
      global_keymaps_prefix = '<leader>R',
    },
  },

  -- buffer manager
  {
    'mistweaverco/bafa.nvim',
    version = 'v1.7.1',
  },

  -- gamification
  {
    'gisketch/triforce.nvim',
    dependencies = { 'nvzone/volt' },
    config = function()
      require('triforce').setup {
        -- Optional: Add your configuration here
        keymap = {
          show_profile = '<leader>tp', -- Open profile with <leader>tp
        },
      }
    end,
  },

  -- zen
  {
    'folke/zen-mode.nvim',
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
  },
}
