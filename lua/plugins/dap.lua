return {
  {
    "theHamsta/nvim-dap-virtual-text",
    config = function()
      require("nvim-dap-virtual-text").setup()
    end,
  },
  {

    "mfussenegger/nvim-dap",
    lazy = false,
    config = function()
      -- require("dashboard").setup {
      --   -- config
      -- }
    end,
  },
  {

    "leoluz/nvim-dap-go",
    lazy = false,
    config = function()
      require("dap-go").setup {
        dap_configurations = {
          {
            type = "go",
            name = "Debug Moon",
            request = "launch",
            program = "main.go",
            showLog = true,
            logOutput = { "dap", "debugger", "stdout" },
            -- buildFlags = require("dap-go").get_build_flags,
          },
        },
      }
      -- require("dashboard").setup {
      --   -- config
      -- }
    end,
  },
  {
    "rcarriga/nvim-dap-ui",
    config = function()
      require("dapui").setup()
    end,

    dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
  },
}
