-- local handler = function(virtText, lnum, endLnum, width, truncate)
--   local newVirtText = {}
--   local suffix = (" 󰁂 %d "):format(endLnum - lnum)
--   local sufWidth = vim.fn.strdisplaywidth(suffix)
--   local targetWidth = width - sufWidth
--   local curWidth = 0
--   for _, chunk in ipairs(virtText) do
--     local chunkText = chunk[1]
--     local chunkWidth = vim.fn.strdisplaywidth(chunkText)
--     if targetWidth > curWidth + chunkWidth then
--       table.insert(newVirtText, chunk)
--     else
--       chunkText = truncate(chunkText, targetWidth - curWidth)
--       local hlGroup = chunk[2]
--       table.insert(newVirtText, { chunkText, hlGroup })
--       chunkWidth = vim.fn.strdisplaywidth(chunkText)
--       -- str width returned from truncate() may less than 2nd argument, need padding
--       if curWidth + chunkWidth < targetWidth then
--         suffix = suffix .. (" "):rep(targetWidth - curWidth - chunkWidth)
--       end
--       break
--     end
--     curWidth = curWidth + chunkWidth
--   end
--   table.insert(newVirtText, { suffix, "MoreMsg" })
--   return newVirtText
-- end
--
return {
  {
    lazy = false,
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
  },
  -- lsp bootstrapper
  {
    "nvimdev/lspsaga.nvim",
    config = function()
      require("lspsaga").setup {}
    end,
    dependencies = {
      "nvim-treesitter/nvim-treesitter", -- optional
      "nvim-tree/nvim-web-devicons", -- optional
    },
    lazy = false,
  },
  {
    "windwp/nvim-ts-autotag",
    lazy = false,
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },

  {
    "neoclide/coc.nvim",
    branch = "master",
    build = "yarn install --frozen-lockfile",
  },
  { "kevinhwang91/promise-async", lazy = false },
  {
    "kevinhwang91/nvim-ufo",
    lazy = false,
    config = function()
      -- local ftMap = {
      --   vim = "indent",
      --   python = { "indent" },
      --   git = "",
      --   tsx = { "indent", "treesitter" },
      -- }
      require("ufo").setup()
      --{
      -- fold_virt_text_handler = handler,
      --   open_fold_hl_timeout = 150,
      --   close_fold_kinds_for_ft = {
      --     default = { "imports", "comment" },
      --     json = { "array" },
      --     c = { "comment", "region" },
      --   },
      --   preview = {
      --     win_config = {
      --       border = { "", "─", "", "", "", "─", "", "" },
      --       winhighlight = "Normal:Folded",
      --       winblend = 0,
      --     },
      --     mappings = {
      --       scrollU = "<C-u>",
      --       scrollD = "<C-d>",
      --       jumpTop = "[",
      --       jumpBot = "]",
      --     },
      --   },
      --   provider_selector = function(bufnr, filetype, buftype)
      --     -- if you prefer treesitter provider rather than lsp,
      --     -- return ftMap[filetype] or {'treesitter', 'indent'}
      --     return ftMap[filetype]
      --
      --     -- refer to ./doc/example.lua for detail
      --   end,
      -- }
    end,
    requires = "kevinhwang91/promise-async",
  },
  -- navigate between tmux and vim
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
    suggesstion = {
      auto_trigger = true,
    },
  },
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "html-lsp",
        "css-lsp",
        "prettier",
        "prettierd",
        "gopls",
        "docker-compose-language-service",
        "dockerfile-language-server",
      },
    },
  },

  -- mini indent scope
  {
    "echasnovski/mini.nvim",
    version = "*",
    config = function()
      require("mini.indentscope").setup()
    end,
    lazy = false,
  },

  -- rust tools
  {
    "simrat39/rust-tools.nvim",
    ft = "rust",
    init = function()
      vim.g.rustfmt_autosave = 1
    end,
    dependencies = "neovim/nvim-lspconfig",
    opts = function()
      local on_attach = require("plugins.configs.lspconfig").on_attach

      local capabilities = require("plugins.configs.lspconfig").capabilities

      local options = {
        server = {
          on_attach = on_attach,
          capabilities = capabilities,
        },
      }

      return options
    end,
    config = function(_, opts)
      require("rust-tools").setup(opts)
    end,
  },

  {
    "saecki/crates.nvim",
    ft = { "rust", "toml" },
    config = function(_, opts)
      local crates = require "crates"
      crates.setup(opts)
      crates.show()
    end,
  },

  -- ai completion plugin
  {
    "github/copilot.vim",
    ft = { "python", "php", "javascript", "typescript", "c", "lua", "rust", "css" },
    lazy = false,
  },
  {
    "olexsmir/gopher.nvim",
    ft = "go",
    config = function(_, opts)
      require("gopher").setup(opts)
    end,
    build = function()
      vim.cmd [[silent! GoInstallDeps]]
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
      },
    },
  },
}
