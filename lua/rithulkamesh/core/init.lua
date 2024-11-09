-- Mostly non-plugin based settings go here

-- -----------------------------------------------------------------------------
--     - Disabling Arrow keys -
-- -----------------------------------------------------------------------------
vim.keymap.set("n", "<Up>", "<Nop>", { noremap = true })
vim.keymap.set("n", "<Down>", "<Nop>", { noremap = true })
vim.keymap.set("n", "<Left>", "<Nop>", { noremap = true })
vim.keymap.set("n", "<Right>", "<Nop>", { noremap = true })

-- -----------------------------------------------------------------------------
--     - Human error correction -
-- -----------------------------------------------------------------------------
vim.api.nvim_create_user_command("W", "w", {})
vim.api.nvim_create_user_command("Q", "q", {})
vim.api.nvim_create_user_command("Wq", "wq", {})
vim.api.nvim_create_user_command("Qa", "qa", {})

-- -----------------------------------------------------------------------------
--     - Leader -
-- -----------------------------------------------------------------------------
vim.g.mapleader = "\\"

-- -----------------------------------------------------------------------------
--     - Code Editing -
-- -----------------------------------------------------------------------------
vim.cmd("filetype plugin indent on")
vim.cmd("syntax on")

-- Options
vim.opt.clipboard:append("unnamedplus")
vim.opt.number = true
vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.foldcolumn = "auto:2"
vim.opt.foldenable = true
vim.opt.foldlevel = 6
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"

-- -----------------------------------------------------------------------------
--     - Quality of Life -
-- -----------------------------------------------------------------------------
-- Remove all highlights when pressing escape
vim.keymap.set("n", "<Esc>", ":noh<CR><Esc>", { noremap = true, silent = true })
