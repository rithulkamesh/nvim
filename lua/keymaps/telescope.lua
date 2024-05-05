local keymap = vim.api.nvim_set_keymap

keymap("n", "<leader>fd", ":Telescope current_buffer_fuzzy_find<cr>", {})
keymap("n", "<leader>ht", ":Telescope help_tags<cr>", {})
keymap("n", "<leader>rg", ":Telescope live_grep<cr>", {})
keymap("n", "<leader>fb", ":Telescope buffers<cr>", {})
keymap("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Find todos" })
