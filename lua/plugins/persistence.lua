return {
  "folke/persistence.nvim",
  event = "BufReadPre", -- this will only start session saving when an actual file is opened
  opts = {
    -- add any custom options here
  },
}
