return {
  { "folke/lazy.nvim", version = false },
  { "LazyVim/LazyVim", version = false },
  -- Declutters interface for writing
  { "junegunn/goyo.vim", version = false },
  -- Indent guides
  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
  -- Smooth scrolling
  {
    "karb94/neoscroll.nvim",
    config = function()
      require('neoscroll').setup({})
    end
  },
  -- Color highlighter (like this: #0000ff)
  { "norcalli/nvim-colorizer.lua", version = false },
  -- Syntax highlighting
  { "nvim-treesitter/nvim-treesitter", version = false },
  -- Rainbow delimiters
  { "hiphish/rainbow-delimiters.nvim" },
  -- Text alignment
  {
    "junegunn/vim-easy-align", version = false,
    -- config = function() vim.keymap.set( "x", "ga", "<Plug>(EasyAlign)") end,
    keys = {
      { "ga", "<Plug>(EasyAlign)", mode = { "x", "n" },
        desc = "Start interactive EasyAlign" },
    },
  },
  -- Navigation between matching syntax: ie., if -> else -> end if
  {
    "andymass/vim-matchup",
    init = function()
      vim.g.matchup_matchparen_offscreen = { method = "popup" }
    end,
  },
  -- Reflows hard-wrapped text
  {
    "preservim/vim-pencil",
    init = function()
      vim.g["pencil#wrapModeDefault"] = "hard"
      vim.g["pencil#conceallevel"] = 0
      vim.api.nvim_set_keymap(
        'n', ';', ':TogglePencil<CR>',
        { noremap = true, silent = false }
      )
    end,
    -- keys = {
    --   { "<leader>q", ":Pencil<CR>", mode = { "x", "n" }, desc = "Toggle Pencil" },
    -- },
  },
  -- Surround text with brackets, parenthesis, etc.
  { "machakann/vim-sandwich" },
  -- LaTeX support
  {
    "lervag/vimtex",
    lazy = false,     -- we don't want to lazy load VimTeX
    -- tag = "v2.15", -- uncomment to pin to a specific release
    init = function()
      -- VimTeX configuration goes here, e.g.
      vim.g.vimtex_view_method = "zathura"
    end
  },
}
