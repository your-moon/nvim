return {
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local lspconfig = require "lspconfig"
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      capabilities = vim.tbl_deep_extend("force", capabilities, require("cmp_nvim_lsp").default_capabilities())

      lspconfig.lua_ls.setup {
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" },
              disable = { "different-requires" },
            },
          },
        },
      }

      lspconfig.zls.setup {}
      -- lspconfig.biome.setup {}
      -- lspconfig.ts_ls.setup {}

      lspconfig.clangd.setup {
        cmd = {
          "clangd",
          "--offset-encoding=utf-16",
        },
      }

      lspconfig.gopls.setup {
        filetypes = { "go", "gomod", "gowork", "gotmpl" },
        settings = {
          env = {
            GOEXPERIMENT = "rangefunc",
          },
          formatting = {
            gofumpt = true,
          },
        },
      }

      lspconfig.tailwindcss.setup {
        settings = {
          includeLanguages = {
            templ = "html",
          },
        },
      }

      lspconfig.templ.setup {}
    end,
  },
}
