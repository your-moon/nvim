local map = vim.keymap.set

map("n", "K", "<cmd> Lspsaga hover_doc <cr>", { desc = "Hover Doc" })
map("n", "gw", "<cmd> Lspsaga peek_definition <cr>", { desc = "Peek definition" })
map("n", "gf", "<cmd> Lspsaga finder <cr>", { desc = "Find definition" })
map("n", "gd", "<cmd> Lspsaga goto_definition <cr>", { desc = "Goto definition" })
map("n", "<leader>ra", "<cmd> Lspsaga rename <cr>", { desc = "LSP Rename" })
map("n", "]d", "<cmd> Lspsaga diagnostic_jump_next <cr>", { desc = "LSP jump next" })
map("n", "[d", "<cmd> Lspsaga diagnostic_jump_prev <cr>", { desc = "LSP jump prev" })
map("n", "<leader>ca", "<cmd> Lspsaga code_action <cr>", { desc = "LSP code action" })

-- Split Explore
map("n", "<leader>vx", "<cmd> Vexplore<cr>", { desc = "Vexplore" })
map("n", "<leader>hx", "<cmd> Hexplore<cr>", { desc = "Hexplore" })
map("n", "<leader>v", "<cmd> vsplit<cr>", { desc = "vsplit" })
map("n", "<leader>h", "<cmd> hsplit<cr>", { desc = "hsplit" })
