require("keymaps.telescope")

local keymap = vim.api.nvim_set_keymap
keymap("n", "<leader>f" ,":Format<CR>", {silent=true})
keymap("n", "<leader>e" ,":NvimTreeToggle<CR>", {silent=true})
keymap("n", "<leader>b" ,":JABSOpen<CR>", {silent=true})
keymap("n", "<leader>tf", "<cmd>ToggleTerm size=30 dir=git_dir direction=float<CR>", {noremap = true, silent = true})

vim.keymap.set("n", "]t", function()
  require("todo-comments").jump_next()
end, { desc = "Next todo comment" })

vim.keymap.set("n", "[t", function()
  require("todo-comments").jump_prev()
end, { desc = "Previous todo comment" })

vim.keymap.set("n", "]t", function()
  require("todo-comments").jump_next({keywords = { "ERROR", "WARNING" }})
end, { desc = "Next error/warning todo comment" })
