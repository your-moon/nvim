local map = vim.keymap.set

map("n", "K", "<cmd> Lspsaga hover_doc <cr>", { desc = "Hover Doc" })
map("n", "gw", "<cmd> Lspsaga peek_definition <cr>", { desc = "Peek definition" })
map("n", "gr", "<cmd> Lspsaga finder <cr>", { desc = "Find definition" })
map("n", "gd", "<cmd> Lspsaga goto_definition <cr>", { desc = "Goto definition" })
map("n", "]d", "<cmd> Lspsaga diagnostic_jump_next <cr>", { desc = "LSP jump next" })
map("n", "[d", "<cmd> Lspsaga diagnostic_jump_prev <cr>", { desc = "LSP jump prev" })
map("n", "<leader>ca", "<cmd> Lspsaga code_action <cr>", { desc = "LSP code action" })
map("n", "<leader>rn", "<cmd> Lspsaga rename <cr>", { desc = "LSP rename" })

-- Split Explore
-- map("n", "<leader>vx", "<cmd> Vexplore<cr>", { desc = "Vexplore" })
-- map("n", "<leader>hx", "<cmd> Hexplore<cr>", { desc = "Hexplore" })
-- map("n", "<leader>v", "<cmd> vsplit<cr>", { desc = "vsplit" })
-- map("n", "<leader>h", "<cmd> hsplit<cr>", { desc = "hsplit" })

-- Trouble
map("n", "<leader>xw", "<cmd> Trouble diagnostics toggle <cr>", { desc = "Trouble Diagnostics Toggle" })
map("n", "<leader>xq", "<cmd> Trouble qflist toggle <cr>", { desc = "Trouble Quickfix Toggle" })

-- Nvim tree
map("n", "<leader>e", "<cmd> NvimTreeToggle <cr>", { desc = "NvimTree Toggle" })
map("n", "<leader>r", "<cmd> NvimTreeFindFileToggle <cr>", { desc = "NvimTree Find File" })

-- typescript organize imports
map("n", "<leader>o", "<cmd> TSToolsOrganizeImports <cr>", { desc = "TSToolsOrganizeImports" })

-- Multiple Cursors
map("n", "<C-j>", "<cmd> MultipleCursorsAddDown <cr>", { desc = "Add cursor and move down" })
map("x", "<C-j>", "<cmd> MultipleCursorsAddDown <cr>", { desc = "Add cursor and move down" })
map("n", "<C-k>", "<cmd> MultipleCursorsAddUp <cr>", { desc = "Add cursor and move up" })
map("x", "<C-k>", "<cmd> MultipleCursorsAddUp <cr>", { desc = "Add cursor and move up" })

map("n", "<C-Up>", "<cmd> MultipleCursorsAddUp <cr>", { desc = "Add cursor and move up" })
map("i", "<C-Up>", "<cmd> MultipleCursorsAddUp <cr>", { desc = "Add cursor and move up" })
map("x", "<C-Up>", "<cmd> MultipleCursorsAddUp <cr>", { desc = "Add cursor and move up" })
map("n", "<C-Down>", "<cmd> MultipleCursorsAddDown <cr>", { desc = "Add cursor and move down" })
map("i", "<C-Down>", "<cmd> MultipleCursorsAddDown <cr>", { desc = "Add cursor and move down" })
map("x", "<C-Down>", "<cmd> MultipleCursorsAddDown <cr>", { desc = "Add cursor and move down" })

map("n", "<C-LeftMouse>", "<cmd> MultipleCursorsMouseAddDelete <cr>", { desc = "Add or remove cursor" })
map("i", "<C-LeftMouse>", "<cmd> MultipleCursorsMouseAddDelete <cr>", { desc = "Add or remove cursor" })

map(
  "x",
  "<leader>m",
  "<cmd> MultipleCursorsAddVisualArea <cr>",
  { desc = "Add cursors to the lines of the visual area" }
)

map("n", "<leader>a", "<cmd> MultipleCursorsAddMatches <cr>", { desc = "Add cursors to cword" })
map("x", "<leader>a", "<cmd> MultipleCursorsAddMatches <cr>", { desc = "Add cursors to cword" })
map("n", "<leader>A", "<cmd> MultipleCursorsAddMatchesV <cr>", { desc = "Add cursors to cword in previous area" })
map("x", "<leader>A", "<cmd> MultipleCursorsAddMatchesV <cr>", { desc = "Add cursors to cword in previous area" })

map("n", "<leader>d", "<cmd> MultipleCursorsAddJumpNextMatch <cr>", { desc = "Add cursor and jump to next cword" })
map("x", "<leader>d", "<cmd> MultipleCursorsAddJumpNextMatch <cr>", { desc = "Add cursor and jump to next cword" })
map("n", "<leader>D", "<cmd> MultipleCursorsJumpNextMatch <cr>", { desc = "Jump to next cword" })
map("x", "<leader>D", "<cmd> MultipleCursorsJumpNextMatch <cr>", { desc = "Jump to next cword" })

-- Remove the duplicate leader-j binding since we now have leader-d
-- map("n", "<leader>j", "<cmd> MultipleCursorsAddJumpNextMatch <cr>", { desc = "Add cursor next match down" })
-- map("n", "<leader>d", "<cmd> MultipleCursorsAddDown <cr>", { desc = "Add cursor next down" })
map(
  "n",
  "<leader>l",
  "<cmd> ToggleTerm size=40 dir=./ direction=float name=desktop <cr>",
  { desc = "Add cursor next down" }
)
-- nvim dap
map("n", "<leader>db", "<cmd> DapToggleBreakpoint <cr>", { desc = "Dap toggle breakpoint" })

map("n", "<leader>dsl", function()
  require("dapui").toggle()
end, { desc = "Dap ui " })

map("n", "<leader>dus", function()
  local widgets = require "dap.ui.widgets"
  local sidebar = widgets.sidebar(widgets.scopes)
  sidebar.open()
end, { desc = "Dap debugging sidebar" })

map("n", "<leader>dn", "<cmd> DapStepOver <cr>", { desc = "Dap StepOver" })

map("n", "<leader>dd", function()
  require("dap").continue()
end, { desc = "Dap debug" })

map("n", "<leader>db", "<cmd> DapToggleBreakpoint <cr>", { desc = "Dap toggle breakpoint" })

map("n", "<leader>gg", "<cmd> Neogit <cr>", { desc = "Neogit" })
