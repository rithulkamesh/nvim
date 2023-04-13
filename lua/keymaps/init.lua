require("keymaps.telescope")

local keymap = vim.api.nvim_set_keymap
keymap("n", "<leader>f" ,":Format<CR>", {silent=true})
keymap("n", "<leader>e" ,":NvimTreeToggle<CR>", {silent=true})
keymap("n", "<leader>tf", "<cmd>ToggleTerm size=30 dir=git_dir direction=float<CR>", {noremap = true, silent = true})
