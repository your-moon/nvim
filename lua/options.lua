require "nvchad.options"

-- add yours here!
--

vim.o.guifont = "ZedMono Nerd Font:h18" -- text below applies for VimScript
vim.g.neovide_cursor_vfx_mode = "pixiedust"

vim.o.foldcolumn = "1"
vim.o.foldlevel = 99
vim.o.foldlevelstart = 99
vim.o.foldenable = true
vim.o.foldclose = "all"
-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

vim.api.nvim_create_user_command("DiagnosticToggle", function()
  local config = vim.diagnostic.config
  local vt = config().virtual_text
  config {
    virtual_text = not vt,
    underline = not vt,
    signs = not vt,
  }
end, { desc = "toggle diagnostic" })
