local map = vim.api.nvim_set_keymap

vim.cmd([[:so $HOME/.config/nvim/nolua.vim]])

require("core")
require("config")
