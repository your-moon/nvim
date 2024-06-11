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

      local function organize_imports()
        local params = {
          command = "_typescript.organizeImports",
          arguments = { vim.api.nvim_buf_get_name(0) },
          title = "",
        }
        vim.lsp.buf.execute_command(params)
      end

      -- typescript
      lspconfig.tsserver.setup {
        capabilities = capabilities,
        commands = {
          OrganizeImports = {
            organize_imports,
            description = "Organize Imports",
          },
        },
      }

      -- lspconfig.rust_analyzer.setup {}

      lspconfig.zls.setup {}

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
