local keymap = vim.api.nvim_set_keymap

keymap("n", "<leader>fd", ":Telescope current_buffer_fuzzy_find<cr>", {})
keymap("n", "<leader>ht", ":Telescope help_tags<cr>", {})
keymap("n", "<leader>rg", ":Telescope live_grep<cr>", {})
keymap("n", "<leader>fb", ":Telescope buffers<cr>", {})
keymap("n", "<leader>gb", ":Telescope git_branches<cr>", {})
keymap("n", "<leader>glb", ":Telescope git_stash<cr>", {})
