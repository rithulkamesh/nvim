require("keymaps.telescope")

local keymap = vim.api.nvim_set_keymap
keymap("n", "<leader>f", ":Format<CR>", { silent = true })
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", { silent = true })
