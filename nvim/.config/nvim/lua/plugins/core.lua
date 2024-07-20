return {
  { "folke/lazy.nvim", version = false },
  { "LazyVim/LazyVim", version = false },
  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
  { "norcalli/nvim-colorizer.lua", version = false },
  { "nvim-treesitter/nvim-treesitter", version = false },
  {
    "junegunn/vim-easy-align", version = false,
    -- config = function() vim.keymap.set( "x", "ga", "<Plug>(EasyAlign)") end,
    keys = { { "ga", "<Plug>(EasyAlign)", mode = { "x", "n" }, desc = "Start interactive EasyAlign" } }
  },
	-- {
	-- 	"nvim-neorg/neorg",
	--    lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
	--    version = "*", -- Pin Neorg to the latest stable release
	--    config = true,
	-- }
}
