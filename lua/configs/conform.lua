local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettierd" },
    html = { "prettierd" },
    tsx = { "prettierd" },
    javascript = { "prettierd" },
    go = { "gofmt" },
    c = { "clang_format" },
  },

  formatters = {
    prettierd = {
      command = "prettierd",
      args = { "--stdin-filepath", vim.api.nvim_buf_get_name(0) },
    },
  },
  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

require("conform").setup(options)
