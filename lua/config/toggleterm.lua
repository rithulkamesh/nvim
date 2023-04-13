require("toggleterm").setup()

vim.api.nvim_set_keymap("n", "<leader>tf", "<cmd>ToggleTerm size=30 dir=git_dir direction=float<CR>", {noremap = true, silent = true})
