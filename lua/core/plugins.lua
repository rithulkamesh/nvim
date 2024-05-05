return require("lazy").setup({

	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},

	-- Misc
	"nvim-tree/nvim-web-devicons",
	"tpope/vim-fugitive",
	{
		"stevearc/dressing.nvim",
		opts = {},
	},
	{
		"goolord/alpha-nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("alpha").setup(require("alpha.themes.dashboard").config)
		end,
	},
	"christoomey/vim-tmux-navigator",
	{
		"lukas-reineke/indent-blankline.nvim",
		event = { "BufReadPre", "BufNewFile" },
		main = "ibl",
		opts = {
			indent = { char = "┊" },
		},
	},
	{
		"folke/todo-comments.nvim",
		event = { "BufReadPre", "BufNewFile" },
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local todo_comments = require("todo-comments")

			-- set keymaps
			local keymap = vim.keymap -- for conciseness

			keymap.set("n", "]t", function()
				todo_comments.jump_next()
			end, { desc = "Next todo comment" })

			keymap.set("n", "[t", function()
				todo_comments.jump_prev()
			end, { desc = "Previous todo comment" })

			todo_comments.setup()
		end,
	},

	--- Code Helpers
	"mhartington/formatter.nvim",
	"windwp/nvim-autopairs",
	"nvim-treesitter/nvim-treesitter",
	"windwp/nvim-ts-autotag",
	"github/copilot.vim",

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
}, { checker = {
	enabled = true,
	notify = false,
}, change_detection = {
	notify = false,
} })
