local util = require "formatter.util"

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
    cpp = {
        require("formatter.filetypes.cpp").clangformat
    },
    go = {
        require("formatter.filetypes.go").gofmt,
        require("formatter.filetypes.go").goimports
    },
    typescript = {require("formatter.filetypes.typescript").prettier},
    javascript = {require("formatter.filetypes.javascript").pretteir},
    typescriptreact = {require("formatter.filetypes.typescriptreact").prettier},
    python = {require("formatter.filetypes.python").autopep8},
    ["*"] = {
      require("formatter.filetypes.any").remove_trailing_whitespace
    }
  }
}
