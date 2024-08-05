require("config.lazy")

-- require("lazy").setup("plugins")

-- indent-blankline plugin
-- require("ibl").setup()

-- Fix for the slow syntax highlighting (could be useless)
-- vim.cmd([[syntax off]])
-- vim.cmd([[TSEnable highlight]])

vim.opt.termguicolors = true
vim.cmd.colorscheme("colors")
require('colorizer').setup()

vim.opt.autoindent = true
vim.opt.smartindent = true

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.textwidth = 80
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = { "*.tex", "*.lua", "*.conf" },
  callback = function()
		vim.bo.tabstop = 2
		vim.bo.shiftwidth = 2
  end,
})
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = { "*.tex" },
  callback = function()
    -- Move through soft-wrapped lines
    vim.cmd([[noremap <expr> j v:count ? 'j' : 'gj']])
    vim.cmd([[noremap <expr> k v:count ? 'k' : 'gk']])
    -- vim.opt.wrap = true
    -- vim.opt.columns = 80
    vim.opt.linebreak = true
  end,
})
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = { "*.lua", "*.f90" },
  callback = function()
    -- Move through soft-wrapped lines
  vim.cmd.highlight({ "rightMargin", "term=bold", "ctermfg=blue", "guifg=blue" })
  vim.cmd([[match rightMargin '\%>80v.\+']])
  vim.opt.wrap = true
  end,
})

vim.opt.expandtab = true
