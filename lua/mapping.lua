local map = vim.keymap.set

map("n", "K", "<cmd> Lspsaga hover_doc <cr>", { desc = "Hover Doc" })
map("n", "gw", "<cmd> Lspsaga peek_definition <cr>", { desc = "Peek definition" })
map("n", "gr", "<cmd> Lspsaga finder <cr>", { desc = "Find definition" })
map("n", "gd", "<cmd> Lspsaga goto_definition <cr>", { desc = "Goto definition" })
map("n", "]d", "<cmd> Lspsaga diagnostic_jump_next <cr>", { desc = "LSP jump next" })
map("n", "[d", "<cmd> Lspsaga diagnostic_jump_prev <cr>", { desc = "LSP jump prev" })
map("n", "<leader>ca", "<cmd> Lspsaga code_action <cr>", { desc = "LSP code action" })
map("n", "<leader>rn", "<cmd> Lspsaga rename <cr>", { desc = "LSP rename" })

map("n", "<leader>w", "<cmd> OrganizeImports <cr>", { desc = "Organize Typescript Imports" })

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

map("n", "<leader>z", "<cmd> ZenMode<cr>", { desc = "Zen Mode" })

map("n", "<leader>j", "<cmd> MultipleCursorsAddJumpNextMatch <cr>", { desc = "Add cursor next match down" })
-- map("n", "<leader>d", "<cmd> MultipleCursorsAddDown <cr>", { desc = "Add cursor next down" })
map(
  "n",
  "<leader>l",
  "<cmd> ToggleTerm size=40 dir=./ direction=float name=desktop <cr>",
  { desc = "Add cursor next down" }
)
-- nvim dap
map("n", "<leader>db", "<cmd> DapToggleBreakpoint <cr>", { desc = "Dap toggle breakpoint" })
map("n", "<leader>dus", function()
  local widgets = require "dap.ui.widgets"
  local sidebar = widgets.sidebar(widgets.scopes)
  sidebar.open()
end, { desc = "Dap debugging sidebar" })

map("n", "<leader>dn", "<cmd> DapStepOver ", { desc = "Dap StepOver" })

map("n", "<leader>dd", function()
  require("dap").continue()
end, { desc = "Dap debug" })

map("n", "<leader>db", "<cmd> DapToggleBreakpoint <cr>", { desc = "Dap toggle breakpoint" })
