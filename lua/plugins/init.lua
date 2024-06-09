return {
  {
    "ThePrimeagen/harpoon",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("harpoon").setup {}
    end,
  },
  {
    "folke/todo-comments.nvim",
    lazy = false,
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
  },
  {
    "folke/trouble.nvim",
    lazy = false,
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
    lazy = false,
    config = function()
      require("lspsaga").setup {}
    end,
    dependencies = {
      "nvim-treesitter/nvim-treesitter", -- optional
      "nvim-tree/nvim-web-devicons", -- optional
    },
  },

  -- {
  --   "neoclide/coc.nvim",
  --   branch = "master",
  --   build = "yarn install --frozen-lockfile",
  -- },

  { "kevinhwang91/promise-async", lazy = false },
  --
  {
    "kevinhwang91/nvim-ufo",
    lazy = false,
    config = function()
      require("ufo").setup()
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
    cmd = { "ConformInfo" },
    config = function()
      require "configs.conform"
    end,
  },
  {
    "mfussenegger/nvim-dap",
    init = function()
      -- require("core.utils").load_mappings "dap"
    end,
  },
  {
    "dreamsofcode-io/nvim-dap-go",
    ft = "go",
    dependencies = "mfussenegger/nvim-dap",
    config = function(_, opts)
      require("dap-go").setup(opts)
      -- require("core.utils").load_mappings "dap_go"
    end,
  },

  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = {
        enabled = true,
      },
    },
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "zls",
        "typescript-language-server",
        "lua-language-server",
        "stylua",
        "html-lsp",
        "css-lsp",
        "prettier",
        "prettierd",
        "rust-analyzer",
        "gopls",
        "docker-compose-language-service",
        "dockerfile-language-server",
        "clangd",
        "jdtls",
      },
    },
  },

  -- -- mini indent scope
  {
    "echasnovski/mini.nvim",
    version = "*",
    config = function()
      require("mini.indentscope").setup()
    end,
    lazy = false,
  },
  --
  -- rust tools
  {
    "simrat39/rust-tools.nvim",
    ft = "rust",
    init = function()
      vim.g.rustfmt_autosave = 1
    end,
    dependencies = "neovim/nvim-lspconfig",
    opts = function()
      local on_attach = require("nvchad.configs.lspconfig").on_attach

      local capabilities = require("nvchad.configs.lspconfig").capabilities

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

  -- {
  --   "olexsmir/gopher.nvim",
  --   ft = "go",
  --   config = function(_, opts)
  --     require("gopher").setup(opts)
  --   end,
  --   build = function()
  --     vim.cmd [[silent! GoInstallDeps]]
  --   end,
  -- },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "rust",
      },
    },
  },
}
