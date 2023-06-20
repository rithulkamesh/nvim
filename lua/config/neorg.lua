require('neorg').setup {
  load = {
    ["core.defaults"] = {},
    ["core.concealer"] = {
      config = {
        folds = false
      }
    },
    ["core.dirman"] = {
      config = {
        workspaces = { notes = "~/neorg" },
        default_workspace = "notes",
      },
      index = "index.norg"
    },
    ["core.completion"] = {
      config = {
        engine = "nvim-cmp"
      }
    },
    ["core.export"] = {}
  }
}
