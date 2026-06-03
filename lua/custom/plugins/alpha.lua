-- a fast and fully programmable greeter for neovim

vim.pack.add { 'https://github.com/goolord/alpha-nvim' }

local alpha = require("alpha")
local startify = require("alpha.themes.startify")

if vim.g.have_nerd_font then
	startify.file_icons.provider = "devicons"
end
alpha.setup(startify.config)
