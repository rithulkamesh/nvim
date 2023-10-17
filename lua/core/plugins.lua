return require("lazy").setup({
	{ "ellisonleao/gruvbox.nvim", priority = 1000 , config = true, opts = ...},
	"nvim-tree/nvim-web-devicons",
	"matbme/JABS.nvim",
	--- Code Helpers
	"mhartington/formatter.nvim",
	"windwp/nvim-autopairs",
	"nvim-treesitter/nvim-treesitter",

	--- LSP tools
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",

	--- LSP config
	"https://github.com/simrat39/rust-tools.nvim",
	"neovim/nvim-lspconfig",
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-buffer",
	"saadparwaiz1/cmp_luasnip",
	"https://github.com/petertriho/cmp-git/",
	"L3MON4D3/LuaSnip",
	{
		"folke/trouble.nvim",
		dependencies = "nvim-tree/nvim-web-devicons",
	},

	-- File browsing
	--- Nvim tree
	"https://github.com/nvim-tree/nvim-tree.lua",

	--- Telescope
	"nvim-lua/popup.nvim",
	"nvim-lua/plenary.nvim",
	"nvim-telescope/telescope.nvim",

	{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	"nvim-lualine/lualine.nvim",
})
