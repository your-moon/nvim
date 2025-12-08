return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      vim.cmd "colorscheme rose-pine-moon"
    end,
  },
  {
    "blazkowolf/gruber-darker.nvim",
    priority = 1000, -- Make sure to load this before all the other start plugins.
    init = function()
      -- vim.cmd.colorscheme "gruber-darker"
    end,
  },
  {
    "sainnhe/everforest",
    lazy = false,
    priority = 1000,
    config = function()
      -- Optionally configure and load the colorscheme
      -- directly inside the plugin declaration.
      -- vim.g.everforest_enable_italic = true
      -- vim.cmd.colorscheme "everforest"
    end,
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
      -- vim.cmd "colorscheme tokyonight-moon"
    end,
  },
}
