require("config.lazy")

-- require("lazy").setup("plugins")

require("ibl").setup()

vim.opt.termguicolors = true
vim.cmd.colorscheme("colors")
require('colorizer').setup()

vim.opt.autoindent = true
vim.opt.smartindent = true

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = { "*.tex", "*.lua", "*.conf" },
  callback = function()
		vim.bo.tabstop = 2
		vim.bo.shiftwidth = 2
    vim.opt.textwidth = 79
  end,
})
vim.opt.expandtab = true
-- vim.opt.linebreak = true
vim.opt.wrap = true
