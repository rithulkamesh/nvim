-- Dashboard for those times when you accidentally type `vi`
return {
	{
		"goolord/alpha-nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			local alpha = require("alpha")
			local dashboard = require("alpha.themes.dashboard")

			dashboard.section.header.val = {
				"                                                     ",
				"  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
				"  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
				"  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
				"  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
				"  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
				"  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
				"                                                     ",
				"               Just more enjoyable...                ",
			}

			dashboard.section.buttons.val = {
				dashboard.button("e", " New File", "<cmd>ene<CR>"),
				dashboard.button("\\e", " Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
				dashboard.button("\\ff", "󰱼 Find File", "<cmd>Telescope find_files<CR>"),
				dashboard.button("\\fs", " Find Word", "<cmd>Telescope live_grep<CR>"),
				dashboard.button("q", "󰩈 Exit", "<cmd>qa<CR>"),
			}

			alpha.setup(dashboard.opts)
			vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
		end,
	},
}
