return {
  { "blazkowolf/gruber-darker.nvim" },
  {
    "folke/tokyonight.nvim",
    name = "tokyonight",
    priority = 1000,
    config = function()
      -- vim.cmd [[colorscheme tokyonight-night]]
      -- vim.cmd [[colorscheme catppuccin-mocha]]
      vim.cmd [[colorscheme rose-pine]]
      -- vim.cmd [[colorscheme gruvbox]]
      -- vim.cmd [[colorscheme kanagawa-dragon]]
      -- vim.cmd [[colorscheme gruber-darker]]
    end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
  },
  {
    "ellisonleao/gruvbox.nvim",
    name = "gruvbox",
    priority = 1000,
  },
  {
    "rebelot/kanagawa.nvim",
    name = "kanagawa",
    priority = 1000,
  },
}
