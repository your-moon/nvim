return {
  {
    "mfussenegger/nvim-dap",
  },
  {
    "leoluz/nvim-dap-go",
    ft = "go",
    dependencies = "mfussenegger/nvim-dap",
    config = function(_, opts)
      require("dap-go").setup {
        dap_configurations = {
          {
            type = "go",
            name = "Debug (Build Flags)",
            request = "launch",
            program = "${workspaceFolder}",
            buildFlags = require("dap-go").get_build_flags,
          },
        },
      }
    end,
  },
}
