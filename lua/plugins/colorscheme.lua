return {

  {
    "RRethy/base16-nvim",
  },
  {
    "vague2k/vague.nvim",
    config = function()
      require("vague").setup {
        -- optional configuration here
        transparent = true,
        style = {
          -- "none" is the same thing as default. But "italic" and "bold" are also valid options
          boolean = "none",
          number = "none",
          float = "none",
          error = "none",
          comments = "none",
          conditionals = "none",
          functions = "none",
          headings = "bold",
          operators = "none",
          strings = "none",
          variables = "none",

          -- keywords
          keywords = "none",
          keyword_return = "none",
          keywords_loop = "none",
          keywords_label = "none",
          keywords_exception = "none",

          -- builtin
          builtin_constants = "none",
          builtin_functions = "none",
          builtin_types = "none",
          builtin_variables = "none",
        },
        colors = {
          func = "#bc96b0",
          keyword = "#787bab",
          -- string = "#d4bd98",
          string = "#8a739a",
          -- string = "#f2e6ff",
          -- number = "#f2e6ff",
          -- string = "#d8d5b1",
          number = "#8f729e",
          -- type = "#dcaed7",
        },
      }
    end,
  },
  { "blazkowolf/gruber-darker.nvim" },
  {
    "folke/tokyonight.nvim",
    name = "tokyonight",
    priority = 1000,
    config = function()
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
    config = function()
      require("rose-pine").setup {
        disable_background = true,
        styles = {
          italic = false,
        },
      }
    end,
  },
  {
    "sainnhe/gruvbox-material",
    lazy = false,
    priority = 1000,
    config = function()
      -- vim.o.background = "dark"
      -- vim.g.gruvbox_material_background = "medium"
      -- vim.g.gruvbox_material_enable_italic = true
      -- vim.opt.termguicolors = true -- Enable 24-:it RGB colors
      -- vim.cmd.colorscheme "gruvbox-material"
      -- vim.cmd.colorscheme "rose-pine"
    end,
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
