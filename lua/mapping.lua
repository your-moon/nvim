local map = vim.keymap.set

map("n", "K", "<cmd> Lspsaga hover_doc <cr>", { desc = "Hover Doc" })
map("n", "gw", "<cmd> Lspsaga peek_definition <cr>", { desc = "Peek definition" })
map("n", "gr", "<cmd> Lspsaga finder <cr>", { desc = "Find definition" })
map("n", "gd", "<cmd> Lspsaga goto_definition <cr>", { desc = "Goto definition" })
map("n", "]d", "<cmd> Lspsaga diagnostic_jump_next <cr>", { desc = "LSP jump next" })
map("n", "[d", "<cmd> Lspsaga diagnostic_jump_prev <cr>", { desc = "LSP jump prev" })
map("n", "<leader>ca", "<cmd> Lspsaga code_action <cr>", { desc = "LSP code action" })

map("n", "<leader>w", "<cmd> OrganizeImports <cr>", { desc = "Organize Typescript Imports" })

-- Split Explore
map("n", "<leader>vx", "<cmd> Vexplore<cr>", { desc = "Vexplore" })
map("n", "<leader>hx", "<cmd> Hexplore<cr>", { desc = "Hexplore" })
map("n", "<leader>v", "<cmd> vsplit<cr>", { desc = "vsplit" })
map("n", "<leader>h", "<cmd> hsplit<cr>", { desc = "hsplit" })

-- Trouble
map("n", "<leader>xw", "<cmd> Trouble diagnostics toggle <cr>", { desc = "Trouble Diagnostics Toggle" })
map("n", "<leader>xq", "<cmd> Trouble qflist toggle <cr>", { desc = "Trouble Quickfix Toggle" })

-- Nvim tree
map("n", "<leader>e", "<cmd> NvimTreeToggle <cr>", { desc = "NvimTree Toggle" })
map("n", "<leader>r", "<cmd> NvimTreeFindFileToggle <cr>", { desc = "NvimTree Find File" })
