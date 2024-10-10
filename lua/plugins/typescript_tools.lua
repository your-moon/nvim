return {
  --   {
  --     "pmizio/typescript-tools.nvim",
  --     dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
  --     config = function()
  --       require("typescript-tools").setup {
  --         settings = {
  --           seperate_diagnostic_server = true,
  --           -- tsserver_max_memory = 2048,
  --         },
  --       }
  --     end,
  --     opts = {},
  --   },
}
