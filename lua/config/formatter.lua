local util = require "formatter.util"

local keymap = vim.api.nvim_set_keymap

keymap("n", "<leader>f" ,":Format<CR>", {silent=true})


require("formatter").setup {
  logging = true,
  log_level = vim.log.levels.WARN,
  filetype = {
    lua = {
      require("formatter.filetypes.lua").stylua,
    },
    c = {
        require("formatter.filetypes.c").clangformat
    },
    rust = {
        require("formatter.filetypes.rust").rustfmt
    },
    typescript = {require("formatter.filetypes.typescript").prettier},
    typescriptreact = {require("formatter.filetypes.typescriptreact").prettier},
    python = {require("formatter.filetypes.python").autopep8},
    ["*"] = {
      require("formatter.filetypes.any").remove_trailing_whitespace
    }
  }
}
