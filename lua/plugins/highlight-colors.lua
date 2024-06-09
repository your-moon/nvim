return {
  {
    "brenoprata10/nvim-highlight-colors",
    config = function()
      require("nvim-highlight-colors").setup {
        -- options background | foreground | virtual
        render = "virtual",
        virtual_symbol = "⬤",
        enable_tailwind = true,
      }
    end,
  },
}
--"#a3a4f4",
