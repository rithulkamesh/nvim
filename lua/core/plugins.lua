local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end


return require("packer").startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'catppuccin/nvim'
  use 'nvim-tree/nvim-web-devicons'
  use 'matbme/JABS.nvim'

  -- IDE features

  --- Code Helpers
  use "mhartington/formatter.nvim"
  use "windwp/nvim-autopairs"
  use 'nvim-treesitter/nvim-treesitter'

  --- LSP tools
  use "williamboman/mason.nvim"
  use "williamboman/mason-lspconfig.nvim"

  --- LSP config
  use 'https://github.com/simrat39/rust-tools.nvim'
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'saadparwaiz1/cmp_luasnip'
  use 'https://github.com/petertriho/cmp-git/'
  use 'L3MON4D3/LuaSnip'
  use {
    "folke/trouble.nvim",
    requires = "nvim-tree/nvim-web-devicons",
  }

  -- File browsing
  --- Nvim tree
  use 'https://github.com/nvim-tree/nvim-tree.lua'

  --- Telescope
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'

  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  -- Misc
  use {"akinsho/toggleterm.nvim", config = function()
      require("toggleterm").setup()
    end}
  use {
    "nvim-neorg/neorg",
    requires = {
      "nvim-lua/plenary.nvim",
    }
  }
  use 'https://github.com/nvim-neorg/neorg-telescope'
  use 'nvim-lualine/lualine.nvim'
  use {
  "folke/todo-comments.nvim",
  requires = "nvim-lua/plenary.nvim",
}

end)
