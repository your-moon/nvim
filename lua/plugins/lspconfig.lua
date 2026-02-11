return {
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local lspconfig = require "lspconfig"
      local capabilities = require("blink.cmp").get_lsp_capabilities()

      lspconfig.lua_ls.setup {
        capabilities = capabilities,
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" },
              disable = { "different-requires" },
            },
          },
        },
      }

      lspconfig.zls.setup {
        capabilities = capabilities,
      }

      lspconfig.clangd.setup {
        capabilities = capabilities,
        cmd = {
          "clangd",
          "--offset-encoding=utf-16",
        },
      }

      lspconfig.gopls.setup {
        capabilities = capabilities,
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
        capabilities = capabilities,
        settings = {
          includeLanguages = {
            templ = "html",
          },
        },
      }

      lspconfig.templ.setup {
        capabilities = capabilities,
      }
    end,
  },
}
