require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<C-h>", "<cmd>TmuxNavigateLeft<cr>", { desc = "Navigate left" })
map("n", "<C-j>", "<cmd>TmuxNavigateDown<cr>", { desc = "Navigate down" })
map("n", "<C-k>", "<cmd>TmuxNavigateUp<cr>", { desc = "Navigate up" })
map("n", "<C-l>", "<cmd>TmuxNavigateRight<cr>", { desc = "Navigate right" })

-- map("n", "zR", require("ufo").openAllFolds)
-- map("n", "zM", require("ufo").closeAllFolds)
-- map("n", "zr", require("ufo").openFoldsExceptKinds)
-- map("n", "zm", require("ufo").closeFoldsWith) -- closeAllFolds == closeFoldsWith(0)
-- map("n", "K", function()
--   local winid = require("ufo").peekFoldedLinesUnderCursor()
--   if not winid then
--     -- choose one of coc.nvim and nvim lsp
--     -- vim.fn.CocActionAsync "definitionHover" -- coc.nvim
--     vim.lsp.buf.hover()
--   end
-- end)

map("n", "gw", "<cmd> Lspsaga peek_definition <cr>", { desc = "Peek definition" })
map("n", "gf", "<cmd> Lspsaga finder <cr>", { desc = "Find definition" })
map("n", "gd", "<cmd> Lspsaga goto_definition <cr>", { desc = "Goto definition" })
map("n", "<leader>ra", "<cmd> Lspsaga rename <cr>", { desc = "LSP Rename" })
map("n", "]d", "<cmd> Lspsaga diagnostic_jump_next <cr>", { desc = "LSP jump next" })
map("n", "[d", "<cmd> Lspsaga diagnostic_jump_prev <cr>", { desc = "LSP jump prev" })
map("n", "<leader>ca", "<cmd> Lspsaga code_action <cr>", { desc = "LSP code action" })

map("n", "<leader>w", "<cmd> OrganizeImports <cr>", { desc = "Organize Typescript Imports" })

map("n", "<leader>xx", "<cmd> TroubleToggle <cr>", { desc = "Trouble Toggle" })
map("n", "<leader>xw", "<cmd> Trouble workspace_diagnostics <cr>", { desc = "Trouble Workspace Diagnostics" })
map("n", "<leader>xd", "<cmd> Trouble document_diagnostics <cr>", { desc = "Trouble Document Diagnostics" })
map("n", "<leader>xq", "<cmd> Trouble quickfix <cr>", { desc = "Trouble Quickfix" })
map("n", "<leader>xl", "<cmd> Trouble loclist <cr>", { desc = "Trouble Loclist" })

map("n", "]t", function()
  require("todo-comments").jump_next()
end, { desc = "Todo Next" })

map("n", "[t", function()
  require("todo-comments").jump_prev()
end, { desc = "Todo Prev" })

-- harpoon add file
map("n", "<leader>ha", function()
  require("harpoon.mark").add_file()
end, { desc = "Harpoon Add File" })

-- harpoon toggle quick menu
map("n", "<leader>hh", function()
  require("harpoon.ui").toggle_quick_menu()
end, { desc = "Harpoon Toggle Quick Menu" })

-- harpoon navigate next mark
map("n", "<leader>a", function()
  require("harpoon.ui").nav_next()
end, { desc = "Harpoon Next" })

-- harpoon navigate prev mark
map("n", "<leader>d", function()
  require("harpoon.ui").nav_prev()
end, { desc = "Harpoon Prev" })

map("n", "<leader>db", "<cmd> DapToggleBreakpoint <CR>", { desc = "Add breakpoint at line" })
map("n", "<leader>dus", function()
  local widgets = require "dap.ui.widgets"
  local sidebar = widgets.sidebar(widgets.scopes)
  sidebar.open()
end, { desc = "Open debugging sidebar" })

map("n", "<leader>dgt", function()
  require("dap-go").debug_test()
end, { desc = "Debug go test" })

map("n", "<leader>dgl", function()
  require("dap-go").debug_last()
end, { desc = "Debug last go test" })
