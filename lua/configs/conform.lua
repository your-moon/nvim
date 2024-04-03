local options = {
  formatters = {
    prettierd = {
      -- prettierd
      function()
        return {
          exe = "prettierd",
          args = { vim.api.nvim_buf_get_name(0) },
          stdin = true,
          env = {
            string.format(
              "PRETTIERD_DEFAULT_CONFIG=%s",
              vim.fn.expand "~/.config/nvim/utils/linter-config/.prettierrc.json"
            ),
          },
        }
      end,
    },
  },
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettierd" },
    html = { "prettierd" },
    tsx = { "prettierd" },
    javascript = { "prettierd" },
    go = { "gofumpt", "goimports_reviser", "golines" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

require("conform").setup(options)
