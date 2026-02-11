local map = vim.keymap.set

map("n", "K", vim.lsp.buf.hover, { desc = "Hover Doc" })
map("n", "gw", "<cmd>Glance definitions<cr>", { desc = "Peek definition" })
map("n", "gr", "<cmd>Glance references<cr>", { desc = "Find references" })
map("n", "gi", function()
  local clients = vim.lsp.get_clients({ bufnr = 0 })
  local client = clients[1]
  if not client then return end
  local params = vim.lsp.util.make_position_params(0, client.offset_encoding)
  vim.lsp.buf_request(0, "textDocument/implementation", params, function(err, result, ctx, _)
    if err or not result or vim.tbl_isempty(result) then
      print "Implementation not found"
      return
    end
    local res = vim.islist(result) and result[1] or result
    -- Use show_document or the non-deprecated equivalent
    vim.lsp.util.show_document(res, client.offset_encoding, { focus = true })
    vim.cmd "normal! zz"
  end)
end, { desc = "Goto implementation" })

map("n", "gI", "<cmd>Glance implementations<cr>", { desc = "Peek implementation" })

map("n", "gd", function()
  local clients = vim.lsp.get_clients({ bufnr = 0 })
  local client = clients[1]
  if not client then return end
  local params = vim.lsp.util.make_position_params(0, client.offset_encoding)
  vim.lsp.buf_request(0, "textDocument/definition", params, function(err, result, ctx, _)
    if err or not result or vim.tbl_isempty(result) then
      print "Definition not found"
      return
    end
    local res = vim.islist(result) and result[1] or result
    vim.lsp.util.show_document(res, client.offset_encoding, { focus = true })
    vim.cmd "normal! zz"
  end)
end, { desc = "Goto definition" })
map("n", "]d", vim.diagnostic.goto_next, { desc = "LSP jump next" })
map("n", "[d", vim.diagnostic.goto_prev, { desc = "LSP jump prev" })
map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP code action" })
map("n", "<leader>rn", function()
  return ":IncRename " .. vim.fn.expand("<cword>")
end, { expr = true, desc = "LSP rename" })

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

map(
  "x",
  "<leader>m",
  "<cmd> MultipleCursorsAddVisualArea <cr>",
  { desc = "Add cursors to the lines of the visual area" }
)

map("n", "<leader>a", "<cmd> MultipleCursorsAddMatches <cr>", { desc = "Add cursors to cword" })
map("n", "<leader>A", "<cmd> MultipleCursorsAddMatchesV <cr>", { desc = "Add cursors to cword in previous area" })
map("x", "<leader>A", "<cmd> MultipleCursorsAddMatchesV <cr>", { desc = "Add cursors to cword in previous area" })

map("n", "<leader>d", "<cmd> MultipleCursorsAddJumpNextMatch <cr>", { desc = "Add cursor and jump to next cword" })
map("x", "<leader>d", "<cmd> MultipleCursorsAddJumpNextMatch <cr>", { desc = "Add cursor and jump to next cword" })

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

-- neogit
map("n", "<leader>gg", "<cmd> Neogit <cr>", { desc = "Neogit" })

-- Copilot
map("i", "<C-l>", function()
  if require("copilot.suggestion").is_visible() then
    require("copilot.suggestion").accept()
  end
end, { desc = "Copilot Accept" })

map("i", "<M-]>", function() require("copilot.suggestion").next() end, { desc = "Copilot Next" })
map("i", "<M-[>", function() require("copilot.suggestion").prev() end, { desc = "Copilot Previous" })
map("i", "<C-]>", function() require("copilot.suggestion").dismiss() end, { desc = "Copilot Dismiss" })

-- Better Escape
map("i", "jk", "<ESC>", { desc = "Exit Insert Mode" })

-- Save and Quit
map("n", "<leader>w", "<cmd> w <cr>", { desc = "Save File" })
map("n", "<leader>q", "<cmd> q <cr>", { desc = "Quit" })

-- Buffer Management
map("n", "<leader>bd", function() require("mini.bufremove").delete(0, false) end, { desc = "Close Buffer (Preserve Window)" })
map("n", "<Tab>", "<cmd> bnext <cr>", { desc = "Next Buffer" })
map("n", "<S-Tab>", "<cmd> bprev <cr>", { desc = "Previous Buffer" })

-- Telescope (including buffers)
map("n", "<leader>fb", "<cmd> Telescope buffers <cr>", { desc = "Find Buffers" })

-- Persistence (Session Management)
map("n", "<leader>qs", function() require("persistence").load() end, { desc = "Restore Session" })
map("n", "<leader>ql", function() require("persistence").load({ last = true }) end, { desc = "Restore Last Session" })
map("n", "<leader>qd", function() require("persistence").stop() end, { desc = "Don't Save Current Session" })

-- Harpoon (Primeagen)
map("n", "<leader>a", function() require("harpoon"):list():add() end, { desc = "Harpoon Add" })
map("n", "<C-e>", function() 
  local harpoon = require("harpoon")
  harpoon.ui:toggle_quick_menu(harpoon:list()) 
end, { desc = "Harpoon Menu" })

map("n", "<C-h>", function() require("harpoon"):list():select(1) end, { desc = "Harpoon 1" })
map("n", "<C-j>", function() require("harpoon"):list():select(2) end, { desc = "Harpoon 2" })
map("n", "<C-k>", function() require("harpoon"):list():select(3) end, { desc = "Harpoon 3" })
map("n", "<C-l>", function() require("harpoon"):list():select(4) end, { desc = "Harpoon 4" })

-- Undotree (Primeagen)
map("n", "<leader>u", "<cmd> UndotreeToggle <cr>", { desc = "Toggle Undotree" })
